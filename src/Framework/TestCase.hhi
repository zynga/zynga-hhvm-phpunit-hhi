<?hh // decl

abstract class PHPUnit_Framework_TestCase extends PHPUnit_Framework_Assert
  implements PHPUnit_Framework_Test, PHPUnit_Framework_SelfDescribing {
  // Protected vars
  protected ?bool $backupGlobals = null;
  protected array $backupGlobalsBlacklist = array();
  protected ?bool $backupStaticAttributes = null;
  protected array $backupStaticAttributesBlacklist = array();
  protected ?bool $runTestInSeparateProcess = null;
  protected bool $preserveGlobalState = true;

  public function __construct(
    ?string $name = null,
    array $data = array(),
    string $dataName = '',
  );

  public function getTest(): PHPUnit_Framework_Test;
  public function setTest(PHPUnit_Framework_Test $test): bool;

  public function toString(): string;
  public function count(): int;

  // Helpers
  public function addToAssertionCount(int $count): void;
  protected function checkRequirements(): void;
  protected function createResult(): PHPUnit_Framework_TestResult;
  public function dataDescription(): string;
  public function doesNotPerformAssertions(): bool;
  public function expectOutputRegex(?string $expectedRegex): void;
  public function expectOutputString(?string $expectedString): void;
  public function getActualOutput(): string;
  public function getAnnotations(
  ): shape(
    'class' => array<string, array<string>>,
    'method' => array<string, array<string>>,
  );
  protected function getDataSetAsString(bool $includeData = true): string;
  protected function getProvidedData(): array;
  public function getExpectedException(): ?string;
  public function getGroups(): array;
  public function getName(bool $withDataSet = true): string;
  public function getNumAssertions(): int;
  public function getResult(): mixed;
  public function getSize(): int;
  public function getStatus(): int;
  public function getStatusMessage(): string;
  public function getTestResultObject(): ?PHPUnit_Framework_TestResult;
  protected function handleDependencies(): bool;
  public function hasDependencies(): bool;
  public function hasExpectationOnOutput(): bool;
  public function hasFailed(): bool;
  public function hasOutput(): bool;
  public function hasSize(): bool;
  <<__Deprecated('Use hasExpectationOnOutput() instead')>>
  public function hasPerformedExpectationsOnOutput(): bool;
  protected function iniSet(string $varName, string $newValue): void;
  public function isInIsolation(): bool;
  public function isLarge(): bool;
  public function isMedium(): bool;
  public function isSmall(): bool;
  public function markAsRisky(): void;
  public function run(
    ?PHPUnit_Framework_TestResult $result = null,
  ): PHPUnit_Framework_TestResult;
  public function runBare(): void;
  protected function runTest(): mixed;
  public function setBackupGlobals(bool $backupGlobals): void;
  public function setBackupStaticAttributes(
    bool $backupStaticAttributes,
  ): void;
  public function setDependencies(array<string> $dependencies): void;
  public function setDependencyInput(
    array<string, mixed> $dependencyInput,
  ): void;
  public function setBeStrictAboutChangesToGlobalState(
    bool $beStrictAboutChangeToGlobalState,
  ): void;
  <<
  __Deprecated('Use expectException() and expectExceptionMessage() instead')
  >>
  public function setExpectedException<T>(
    ?classname<T> $name,
    ?string $message = '',
    ?arraykey $code = null,
  ): void;
  <<
  __Deprecated(
    'Use expectException() and expectExceptionMessageRegExp() instead',
  )
  >>
  public function setExpectedExceptionRegExp<T>(
    ?classname<T> $name,
    string $messageRegExp = '',
    ?arraykey $code = null,
  ): void;
  public function expectException<T>(?classname<T> $exception): void;
  public function expectExceptionCode(arraykey $code): void;
  public function expectExceptionMessage(string $message): void;
  public function expectExceptionMessageRegExp(string $messageRegExp): void;
  protected function setExpectedExceptionFromAnnotation(): void;
  public function setGroups(array $groups): void;
  public function setInIsolation(bool $inIsolation): void;
  protected function setLocale(int $category, string $locale, ...): void;
  public function setName(string $name): void;
  public function setOutputCallback(
    (function(string): string) $callback,
  ): void;
  public function setPreserveGlobalState(bool $preserveGlobalState): void;
  public function setResult(mixed $result): void;
  public function setRunTestInSeparateProcess(
    bool $runTestInSeparateProcess,
  ): void;
  public function setTestResultObject(
    PHPUnit_Framework_TestResult $result,
  ): void;
  public function setUseErrorHandler(bool $useErrorHandler): void;
  protected function setUseErrorHandlerFromAnnotation(): void;
  public function usesDataProvider(): bool;

  // Lifecycle
  protected function assertPostConditions(): void;
  protected function assertPreConditions(): void;
  protected function onNotSuccessfulTest(Exception $e): void;
  protected function prepareTemplate(/*Text_Template */ $template): void;
  protected function setUp(): void;
  protected function tearDown(): void;
  public static function setUpBeforeClass(): void;
  public static function tearDownAfterClass(): void;

  // Mock objects
  protected function createMock<T>(
    classname<T> $originalClassName,
  ) /*: PHPUnit_Framework_MockObject_MockObject*/;
  protected function createConfiguredMock<T>(
    classname<T> $originalClassName,
    array $configuration,
  ) /*: PHPUnit_Framework_MockObject_MockObject*/;
  protected function createPartialMock<T>(
    classname<T> $originalClassName,
    array $methods,
  ) /*: PHPUnit_Framework_MockObject_MockObject*/;
  <<__Deprecated('Use createMock() or getMockBuilder() instead')>>
  protected function getMock<T>(
    classname<T> $originalClassName,
    ?array $methods = array(),
    array $arguments = array(),
    string $mockClassName = '',
    bool $callOriginalConstructor = true,
    bool $callOriginalClone = true,
    bool $callAutoload = true,
    bool $cloneArguments = false,
    bool $callOriginalMethods = false,
  ) /*: PHPUnit_Framework_MockObject_MockObject*/;
  public function getMockBuilder<T>(
    classname<T> $className,
  ) /*: PHPUnit_Framework_MockObject_MockBuilder*/;
  protected function getMockClass<Tc, Tm>(
    classname<Tc> $originalClassName,
    array $methods = array(),
    array $arguments = array(),
    string $mockClassName = '',
    bool $callOriginalConstructor = true,
    bool $callOriginalClone = true,
    bool $callAutoload = true,
    bool $cloneArguments = false,
  ): classname<Tm>;
  protected function getMockForAbstractClass<T>(
    classname<T> $originalClassName,
    array $arguments = array(),
    string $mockClassName = '',
    bool $callOriginalConstructor = true,
    bool $callOriginalClone = true,
    bool $callAutoload = true,
    ?array $mockedMethods = array(),
    bool $cloneArguments = false,
  ) /*: PHPUnit_Framework_MockObject_MockObject*/;
  protected function getMockForTrait<T>(
    classname<T> $traitName,
    array $arguments = array(),
    string $mockClassName = '',
    bool $callOriginalConstructor = true,
    bool $callOriginalClone = true,
    bool $callAutoload = true,
    ?array $mockedMethods = array(),
    bool $cloneArguments = false,
  ) /*: PHPUnit_Framework_MockObject_MockObject*/;
  protected function getMockFromWsdl<T>(
    string $wsdlFile,
    classname<T> $originalClassName,
    string $mockClassName = '',
    array $methods = array(),
    bool $callOriginalConstructor = true,
    array $options = array(),
  ) /*: PHPUnit_Framework_MockObject_MockObject*/;
  protected function getMockObjectGenerator(
  ) /*: PHPUnit_Framework_MockObject_Generator*/;
  <<__Deprecated('Use createMock() instead')>>
  protected function getMockWithoutInvokingTheOriginalConstructor<T>(
    classname<T> $originalClassName,
  ) /*: PHPUnit_Framework_MockObject_MockObject */;
  protected function getObjectForTrait<T>(
    classname<T> $traitName,
    array $arguments = array(),
    string $traitClassName = '',
    bool $callOriginalConstructor = true,
    bool $callOriginalClone = true,
    bool $callAutoload = true,
    bool $cloneArguments = false,
  );
  public function registerMockObject(
    /*PHPUnit_Framework_MockObject_MockObject*/ $mockObject,
  ): void;
  protected function verifyMockObjects(): void;
  public function setRegisterMockObjectsFromTestArgumentsRecursively(
    bool $flag,
  ): void;

  // Matches
  public static function any(
  ) /*: PHPUnit_Framework_MockObject_Matcher_AnyInvokedCount*/;
  public static function at(
    int $index,
  ) /*: PHPUnit_Framework_MockObject_Matcher_InvokedAtIndex*/;
  public static function atLeast(
    int $requiredInvocations,
  ) /*: PHPUnit_Framework_MockObject_Matcher_InvokedAtLeastCount*/;
  public static function atLeastOnce(
  ) /*: PHPUnit_Framework_MockObject_Matcher_InvokedAtLeastOnce*/;
  public static function atMost(
    int $allowedInvocations,
  ) /*: PHPUnit_Framework_MockObject_Matcher_InvokedAtMostCount*/;
  public static function exactly(
    int $count,
  ) /*: PHPUnit_Framework_MockObject_Matcher_InvokedCount*/;
  public static function never(
  ) /*: PHPUnit_Framework_MockObject_Matcher_InvokedCount*/;
  public static function onConsecutiveCalls(
    ...
  ) /*: PHPUnit_Framework_MockObject_Stub_ConsecutiveCalls*/;
  public static function once(
  ) /*: PHPUnit_Framework_MockObject_Matcher_InvokedCount*/;
  public static function returnArgument(
    int $index,
  ) /*: PHPUnit_Framework_MockObject_Stub_ReturnArgument*/;
  public static function returnCallback(
    $callback,
  ) /*: PHPUnit_Framework_MockObject_Stub_ReturnCallback*/;
  public static function returnMap(
    array $valueMap,
  ) /*: PHPUnit_Framework_MockObject_Stub_ReturnValueMap*/;
  public static function returnSelf(
  ) /*: PHPUnit_Framework_MockObject_Stub_ReturnSelf*/;
  public static function returnValue(
    mixed $value,
  ) /*: PHPUnit_Framework_MockObject_Stub_Return*/;
  public static function returnValueMap(
    array $valueMap,
  ) /*: PHPUnit_Framework_MockObject_Stub_ReturnValueMap*/;
  public static function throwException(
    Exception $exception,
  ) /*: PHPUnit_Framework_MockObject_Stub_Exception*/;

  // Prophecy
  protected function prophesize<T>(
    ?classname<T> $classOrInterface = null,
  ) /*: \Prophecy\Prophecy\ObjectProphecy*/;
}
