<?hh // strict

namespace PHPUnitHHI;

class ForwardCompatTest extends HHITest {
  public function testNamespaceTestCase(): void {
    $this->runTestFile('forward-compat/namespace/TestCase');
  }

  public function testOldNamespaceTestCase(): void {
    $this->runTestFile('forward-compat/namespace/OldNamespace');
  }
}
