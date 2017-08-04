<?hh // decl

class PHPUnit_Framework_TestSuite
  implements
    PHPUnit_Framework_Test,
    PHPUnit_Framework_SelfDescribing,
    IteratorAggregate<PHPUnit_Framework_Test> {
  protected ?bool $backupGlobals = null;
  protected ?bool $backupStaticAttributes = null;
  protected bool $runTestInSeparateProcess = false;

  protected string $name = '';
  protected array<string, array<PHPUnit_Framework_Test>> $groups = [];
  protected array<PHPUnit_Framework_Test> $tests = [];
  protected int $numTests = -1;
  protected bool $testCase = false;
  protected array<string> $foundClasses = [];

  public function __construct($theClass, string $name = '');
  public function toString(): string;

  public function addTest(
    PHPUnit_Framework_Test $test,
    array<string> $groups = [],
  ): void;
  public function addTestSuite($testClass): void;
  public function addTestFile(string $filename): void;
  public function addTestFiles(Traversable<string> $filenames): void;

  public function count(bool $preferCache = false): int;

  public static function createTest(
    ReflectionClass $theClass,
    string $name,
  ): PHPUnit_Framework_Test;

  protected function createResult(): PHPUnit_Framework_TestResult;
  public function getName(): string;
  public function getGroups(): array<string>;
  public function getGroupDetails(
  ): array<string, array<PHPUnit_Framework_Test>>;

  public function setGroupDetails(
    array<string, array<PHPUnit_Framework_Test>> $groups,
  ): void;
  public function run(
    ?PHPUnit_Framework_TestResult $result = null,
  ): PHPUnit_Framework_TestResult;

  public function setRunTestInSeparateProcess(
    bool $runTestInSeparateProcess,
  ): void;
  public function runTest(
    PHPUnit_Framework_Test $test,
    PHPUnit_Framework_TestResult $result,
  ): void;
  public function setName(string $name): void;

  public function testAt(int $index); // False-able return :(
  public function tests(): array<PHPUnit_Framework_Test>;
  public function setTests(array<PHPUnit_Framework_Test> $tests): void;

  public function markTestSuiteSkipped(string $message = ''): void;

  protected function addTestMethod(
    ReflectionClass $class,
    ReflectionMethod $method,
  ): void;

  public static function isTestMethod(ReflectionMethod $method): bool;

  protected static function warning(
    string $message,
  ): PHPUnit_Framework_Warning;
  protected static function skipTest<T>(
    classname<T> $class,
    string $methodName,
    string $message,
  ): PHPUnit_Framework_SkippedTestCase;
  protected static function incompleteTest<T>(
    classname<T> $class,
    string $methodName,
    string $message,
  ): PHPUnit_Framework_IncompleteTestCase;

  public function setbeStrictAboutChangesToGlobalState(
    bool $beStrictAboutChangesToGlobalState,
  ): void;
  public function setBackupGlobals(bool $backupGlobals): void;
  public function setBackupStaticAttributes(
    bool $backupStaticAttributes,
  ): void;

  public function getIterator(): RecursiveIteratorIterator;

  public function injectFilter(PHPUnit_Runner_Filter_Factory $filter): void;

  protected function setUp(): void;
  protected function tearDown(): void;
}
