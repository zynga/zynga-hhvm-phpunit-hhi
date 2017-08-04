<?hh // strict

namespace PHPUnitHHI;

class AssertTest extends HHITest {
  public function testAssertBoolMethodsTakeMixed(): void {
    $this->runTestFile('assert/bool/mixed');
  }

  public function testAssertBoolMessagesTakeString(): void {
    $this->runTestFile('assert/bool/message');
  }
}
