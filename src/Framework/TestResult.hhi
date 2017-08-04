<?hh // decl

class PHPUnit_Framework_TestResult implements Countable {
  protected array<string,
  shape(
    'result' => PHPUnit_Framework_TestResult,
    'size' => int,
  )> $passed = [];

  protected array<PHPUnit_Framework_TestFailure> $error = [];
  protected array<PHPUnit_Framework_TestFailure> $failures = [];
  protected array<PHPUnit_Framework_TestFailure> $warnings = [];
  protected array<PHPUnit_Framework_TestFailure> $notImplemented = [];
  protected array<PHPUnit_Framework_TestFailure> $risky = [];
  protected array<PHPUnit_Framework_TestFailure> $skipped = [];
  protected array<PHPUnit_Framework_TestListener> $listeners = [];

  protected int $runTests = 0;
  protected float $time = 0.0;

  protected ?PHPUnit_Framework_TestSuite $topTestSuite;
  protected /*?SebastianBergmann\CodeCoverage\CodeCoverage*/ $codeCoverage;

  protected bool $convertErrorsToExceptions = true;
  protected bool $stop = false;
  protected bool $stopOnError = false;
  protected bool $stopOnFailure = false;
  protected bool $stopOnWarning = false;
  protected bool $beStrictAboutTestsThatDoNotTestAnything = false;
  protected bool $beStrictAboutOutputDuringTests = false;
  protected bool $beStrictAboutTodoAnnotatedTests = false;
  protected bool $beStrictAboutResourceUsageDuringSmallTests = false;
  protected bool $enforceTimeLimit = false;
  protected bool $stopOnRisky = false;
  protected bool $stopOnIncomplete = false;
  protected bool $stopOnSkipped = false;
  protected bool $lastTestFailed = false;

  protected int $timeoutForSmallTests = 1;
  protected int $timeoutForMediumTests = 10;
  protected int $timeoutForLargeTests = 60;

  public function addListener(PHPUnit_Framework_TestListener $listener): void;
  public function removeListener(
    PHPUnit_Framework_TestListener $listener,
  ): void;
  public function flushListeners(): void;

  public function addError(
    PHPUnit_Framework_Test $test,
    Exception $e,
    float $time,
  ): void;
  public function addWarning(
    PHPUnit_Framework_Test $test,
    PHPUnit_Framework_Warning $e,
    $time,
  ): void;
  public function addFailure(
    PHPUnit_Framework_Test $test,
    PHPUnit_Framework_AssertionFailedError $e,
    float $time,
  ): void;

  public function startTestSuite(PHPUnit_Framework_TestSuite $suite): void;
  public function endTestSuite(PHPUnit_Framework_TestSuite $suite): void;

  public function startTest(PHPUnit_Framework_Test $test): void;
  public function endTest(PHPUnit_Framework_Test $test, float $time): void;

  public function allHarmless(): bool;
  public function riskyCount(): int;

  public function allCompletelyImplemented(): bool;
  public function notImplementedCount(): int;

  public function risky(): array<PHPUnit_Framework_TestFailure>;
  public function notImplemented(): array<PHPUnit_Framework_TestFailure>;

  public function noneSkipped(): bool;
  public function skippedCount(): int;
  public function skipped(): array<PHPUnit_Framework_TestFailure>;

  public function errorCount(): int;
  public function errors(): array<PHPUnit_Framework_TestFailure>;

  public function failureCount(): int;
  public function failures(): array<PHPUnit_Framework_TestFailure>;

  public function warningCount(): int;
  public function warnings(): array<PHPUnit_Framework_TestFailure>;

  public function passed(
  ): array<string,
  shape(
    'result' => PHPUnit_Framework_TestResult,
    'size' => int,
  )>;

  public function topTestSute(): ?PHPUnit_Framework_TestSuite;

  public function getCollectCodeCoverageInformation(): bool;

  public function run(PHPUnit_Framework_Test $test): void;

  public function count(): int;

  public function shouldStop(): bool;
  public function stop(): void;

  public function getCodeCoverage(
  ) /*: ?SebastianBergmann\CodeCoverage\CodeCoverage */;
  public function setCodeCoverage(
    /*SebastianBergmann\CodeCoverage\CodeCoverage */ $codeCoverage,
  ): void;

  public function convertErrorsToExceptions(bool $flag): void;
  public function getConvertErrorsToExceptions(): bool;

  public function stopOnError(bool $flag): void;
  public function stopOnFailure(bool $flag): void;
  public function stopOnWarning(bool $flag);

  public function beStrictAboutTestsThatDoNotTestAnything(bool $flag): void;
  public function isStrictAboutTestsThatDoNotTestAnything(): bool;

  public function beStrictAboutOutputDuringTest(bool $flag): void;
  public function isStrictAboutOutputDuringTest(): bool;

  public function beStrictAboutResourceUsageDuringSmallTests(
    bool $flag,
  ): void;
  public function isStrictAboutResourceUsageDuringSmallTests(): bool;

  public function enforceTimeLimit(bool $flag): void;
  public function enforcesTimeLimit(): bool;

  public function beStrictAboutTodoAnnotatedTests(bool $flag): void;
  public function isStrictAboutTodoAnnotatedTests(): bool;

  public function stopOnRisky(bool $flag): void;
  public function stopOnIncomplete(bool $flag): void;
  public function stopOnSkipped(bool $flag): void;

  public function time(): float;

  public function wasSuccessful(bool $includeWarnings = true): bool;

  public function setTimeoutForSmallTests(int $timeout): void;
  public function setTimeoutForMediumTests(int $timeout): void;
  public function getTimeoutForLargeTests(): int;
  public function setTimeoutForLargeTests(int $timeout): void;

  public function setRegisterMockObjectsFromTestArgumentsRecursively(
    bool $flag,
  ): void;

  protected function getHierarchy<T>(
    classname<T> $className,
    bool $asRefelctionObjects = false,
  ): array;
}
