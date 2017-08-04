<?hh // strict

namespace PHPUnitHHI;

class TestCaseTest extends HHITest {
  public function testDeprecatedGetMock(): void {
    $this->runTestFile('testcase/deprecated/getMock');
  }

  public function testDeprecatedGetMockWithoutInvokingTheOriginalConstructor(
  ): void {
    $this->runTestFile(
      'testcase/deprecated/getMockWithoutInvokingTheOriginalConstructor',
    );
  }

  public function testDeprecatedHasPerformedExpectationsOnOutput(): void {
    $this->runTestFile(
      'testcase/deprecated/hasPerformedExpectationsOnOutput',
    );
  }

  public function testDeprecatedSetExpectedException(): void {
    $this->runTestFile('testcase/deprecated/setExpectedException');
  }

  public function testDeprecatedSetExpectedExceptionRegExp(): void {
    $this->runTestFile('testcase/deprecated/setExpectedExceptionRegExp');
  }
}
