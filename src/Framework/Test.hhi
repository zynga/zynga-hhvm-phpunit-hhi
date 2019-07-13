<?hh // decl

interface PHPUnit_Framework_Test extends Countable {
  public function run(
    ?PHPUnit_Framework_TestResult $result = null,
  ): PHPUnit_Framework_TestResult;
  public function getName(): string;
  public function setDependencies(Vector<string> $dependencies): bool;
}
