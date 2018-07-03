<?hh // decl

abstract class NOT_NEEDED_PHPUnit_Framework_BaseTestListener
  implements PHPUnit_Framework_TestListener {
  public function addError(PHPUnit_Framework_Test $test, Exception $e, $time);
  public function addWarning(
    PHPUnit_Framework_Test $test,
    PHPUnit_Framework_Warning $e,
    $time,
  );
  public function addFailure(
    PHPUnit_Framework_Test $test,
    PHPUnit_Framework_AssertionFailedError $e,
    $time,
  );
  public function addIncompleteTest(
    PHPUnit_Framework_Test $test,
    Exception $e,
    $time,
  );
  public function addRiskyTest(
    PHPUnit_Framework_Test $test,
    Exception $e,
    $time,
  );
  public function addSkippedTest(
    PHPUnit_Framework_Test $test,
    Exception $e,
    $time,
  );
  public function startTestSuite(PHPUnit_Framework_TestSuite $suite);
  public function endTestSuite(PHPUnit_Framework_TestSuite $suite);
  public function startTest(PHPUnit_Framework_Test $test);
  public function endTest(PHPUnit_Framework_Test $test, $time);
}
