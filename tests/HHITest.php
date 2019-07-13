<?hh // strict

namespace PHPUnitHHI;

use Zynga\PHPUnit\V2\TestCase;

abstract class HHITest extends TestCase {

  protected function parseFile(string $testName): \ConstMap<string, string> {
    $file = __DIR__.'/runs/'.$testName.'.hhit';
    $parts = explode('---', file_get_contents($file));

    $head = array_shift($parts);
    $this->assertEmpty(
      $head,
      'File for test '.$testName.' has invalid start',
    );
    invariant(count($parts) % 2 == 0, 'Invalid file for test: %s', $file);

    $mapping = Map {};
    for ($i = 0; $i < count($parts); $i += 2) {
      $key = strtoupper(trim($parts[$i]));
      $mapping[$key] = trim($parts[$i + 1]);
    }

    return $mapping->toImmMap();
  }

  protected function runTestFile(string $testName): void {
    $parts = $this->parseFile($testName);
    $this->assertTrue(
      $parts->contains('FILE'),
      'Test file for '.$testName.' is missing a FILE section',
    );

    $dumpPath = __DIR__.'/output/test-'.md5($parts['FILE']).'.php';

    try {
      file_put_contents($dumpPath, $parts['FILE']);
      // We use hh_server --check instead of \HH\Client\typecheck so that we
      // ignore timeouts and don't have to sleep between runs to ensure the
      // mtime for the cache check hass passed.
      $path = \escapeshellarg(dirname(__DIR__));
      $cmd = \sprintf('hh_server --json --check %s 2>&1', $path);

      $ret = null;
      $output_arr = null;
      $output = \exec($cmd, $output_arr, $ret);

      $json = @\json_decode($output, true);

      if (json_last_error() != JSON_ERROR_NONE) {
        $this->fail(
          sprintf('Invalid JSON for test %s: %s', $testName, $output),
        );
      }
      $this->assertArrayHasKey('passed', $json);
      $this->assertArrayHasKey('errors', $json);

      if ($parts->contains('PASS')) {
        if ($parts['PASS'] == '1') {
          $this->assertTrue(
            $json['passed'],
            $testName.' did not pass: '.$output,
          );
        } else {
          $this->assertFalse(
            $json['passed'],
            $testName.' did not pass: '.$output,
          );
        }
      }
      if ($parts->contains('ERRORS')) {
        $actualErrors =
          $this->getErrorsFromServer($json['errors'])->toArray();
        $expectedErrors =
          $this->getErrorsFromParts($parts['ERRORS'])->toArray();

        $sorter = function($err1, $err2) {
          if ($err1['line'] != $err2['line']) {
            return $err1['line'] - $err2['line'];
          }

          if ($err1['code'] != $err2['code']) {
            return $err1['code'] - $err2['code'];
          }

          return strcmp($err1['error'], $err2['error']);
        };

        usort($actualErrors, $sorter);
        usort($expectedErrors, $sorter);

        $this->assertEquals($expectedErrors, $actualErrors);
      }
    } finally {
      unlink($dumpPath);
    }
  }

  protected function getErrorsFromServer(
    array<shape('message' => array<shape(
      'descr' => string,
      'path' => string,
      'line' => int,
      'start' => int,
      'end' => int,
      'code' => int,
    )>)> $errors,
  ): \ConstVector<shape(
    'error' => string,
    'line' => int,
    'code' => int,
  )> {
    $errs = Vector {};
    $compressed = Set {};
    foreach ($errors as $error) {
      $message = '';
      foreach ($error['message'] as $m) {
        $message .= $m['descr'].'. ';
      }
      $error = shape(
        'error' => trim($message),
        'line' => $error['message'][0]['line'],
        'code' => $error['message'][0]['code'],
      );

      $comp = json_encode($error);
      if (!$compressed->contains($comp)) {
        $compressed[] = $comp;
        $errs[] = $error;
      }
    }
    return $errs->toImmVector();
  }

  protected function getErrorsFromParts(
    string $errors,
  ): \ConstVector<shape(
    'error' => string,
    'line' => int,
    'code' => int,
  )> {
    $errors = explode("\n", $errors);
    $errs = Vector {};
    foreach ($errors as $error) {
      $parts = explode(':', $error, 3);
      if (count($parts) != 3) {
        $this->fail('Invalid ERRORS');
      }
      $errs[] = shape(
        'error' => trim($parts[2]),
        'line' => intval($parts[0]),
        'code' => intval($parts[1]),
      );
    }
    return $errs->toImmVector();
  }
}
