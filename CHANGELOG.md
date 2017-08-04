# Changelog

## 5.7.1

* Updated to match PHPUnit 5.7.19
* Added:
  + `PHPUnit_Framework_Constraint_Count::getCountOfGenerator`

## 5.7.0

* Updated to match PHPUnit 5.7
* Added:
  + `PHPUnit\Framework\Assert`
  + `PHPUnit\Framework\BaseTestListener`
  + `PHPUnit\Framework\TestListener`
  + `PHPUnit_Framework_TestCase::markAsRisky`
  + `$includeWarnings` argument to `PHPUnit_Framework_TestResult::wasSuccessful`
* Renamed:
  + `PHPUnit_Framework_ExceptionWrapper::$classname` to
    `PHPUnit_Framework_ExceptionWrapper::$className`
  + `PHPUnit_Framework_ExceptionWrapper::getClassname` to
    `PHPUnit_Framework_ExceptionWrapper::getClassName`

## 5.6.0

* Updated to match PHPUnit 5.6
* Added:
  + `PHPUnit_Framework_TestCase::createConfiguredMock`
  + `PHPUnit_Framework_TestCase::doesNotPerformAssertions`
  + `PHPUnit_Framework_TestCase::getProvidedData`
  + `PHPUnit_Framework_Assert::assertDirectoryExists`
  + `PHPUnit_Framework_Assert::assertDirectoryIsReadable`
  + `PHPUnit_Framework_Assert::assertDirectoryIsWritable`
  + `PHPUnit_Framework_Assert::assertDirectoryNotExists`
  + `PHPUnit_Framework_Assert::assertDirectoryNotIsReadable`
  + `PHPUnit_Framework_Assert::assertDirectoryNotIsWritable`
  + `PHPUnit_Framework_Assert::assertFileIsReadable`
  + `PHPUnit_Framework_Assert::assertFileIsWritable`
  + `PHPUnit_Framework_Assert::assertFileNotIsReadable`
  + `PHPUnit_Framework_Assert::assertFileNotIsWritable`
  + `PHPUnit_Framework_Assert::assertIsReadable`
  + `PHPUnit_Framework_Assert::assertIsWritable`
  + `PHPUnit_Framework_Assert::assertNotIsReadable`
  + `PHPUnit_Framework_Assert::assertNotIsWritable`
  + `PHPUnit_Framework_Assert::directoryExists`
  + `PHPUnit_Framework_Assert::isReadable`
  + `PHPUnit_Framework_Assert::isWritable`
  + `PHPUnit_Framework_Constraint_DirectoryExists`
  + `PHPUnit_Framework_Constraint_IsReadable`
  + `PHPUnit_Framework_Constraint_IsWritable`
* Deprecated:
  + `PHPUnit_Framework_TestCase::hasPerformedExpectationsOnOutput`
  + `PHPUnit_Framework_TestCase::setExpectedException`
  + `PHPUnit_Framework_TestCase::setExpectedExceptionRegExp`
* `\PHPUnit\Framework\TestCase` is now `abstract`

## 5.5.0

* Updated to match PHPUnit 5.5
* Added:
  + `PHPUnit_Framework_TestCase::createPartialMock`
* Renamed:
  + `phpunit\framework\TestCase` to `PHPUnit\Framework\TestCase`

## 5.4.0

* Updated to match PHPUnit 5.4
* Added:
  + `phpunit\framework\TestCase`
  + `PHPUnit_Framework_TestCase::dataDescription`
  + `PHPUnit_Framework_TestCase::getGroups`
  + `PHPUnit_Framework_TestCase::hasSize`
  + `PHPUnit_Framework_TestCase::isLarge`
  + `PHPUnit_Framework_TestCase::isMedium`
  + `PHPUnit_Framework_TestCase::isSmall`
  + `PHPUnit_Framework_TestCase::setGroups`
  + `PHPUnit_Framework_TestCase::usesDataProvider`
  + `PHPUnit_Framework_TestCase::createMock`
  + `PHPUnit_Framework_TestCase::registerMockObject`
  + `PHPUnit_Framework_TestCase::setRegisterMockObjectsFromTestArgumentsRecursively`
  + `PHPUnit_Framework_TestResult::getTimeoutForLargeTests`
  + `PHPUnit_Framework_TestResult::setRegisterMockObjectsFromTestArgumentsRecursively`
* Deprecated:
  + `PHPUnit_Framework_TestCase::getMock`
  + `PHPUnit_Framework_TestCase::getMockWithoutInvokingTheOriginalConstructor`

## 5.3.0

* Updated to match PHPUnit 5.3
* Added:
  + `PHPUnit_Framework_MissingCoversAnnotationException`
* Removed:
  + `PHPUnit_Framework_InvalidCoversTargetError`

## 5.2.0

* Updated to match PHPUnit 5.2
* Added:
  + `PHPUnit_Framework_TestCase::expectException`
  + `PHPUnit_Framework_TestCase::expectExceptionCode`
  + `PHPUnit_Framework_TestCase::expectExceptionMessage`
  + `PHPUnit_Framework_TestCase::expectExceptionMessageRegExp`
  + `PHPUnit_Framework_CoveredCodeNotExecutedException`
* Removed:
  + `PHPUnit_Framework_TestListener::addWarning`

## 5.1.0

* Added:
  + `PHPUnit_Framework_WarningTestCase`
* Updated to match PHPUnit 5.1
* Marked terminal methods as `noreturn`

## 5.0.0

* Added:
  + `PHPUnit_Framework_Constraint_IsFinite`
  + `PHPUnit_Framework_Constraint_IsInfinite`
  + `PHPUnit_Framework_Constraint_IsNan`
* Updated to match PHPUnit 5.0

## 4.8.2

* Set up CI

## 4.8.1

* Added:
  + `PHPUnit_Exception`
  + `PHPUnit_Framework_AssertionFailedError`
  + `PHPUnit_Framework_BaseTestListener`
  + `PHPUnit_Framework_CodeCoverageException`
  + `PHPUnit_Framework_Constraint_And`
  + `PHPUnit_Framework_Constraint_ArrayHasKey`
  + `PHPUnit_Framework_Constraint_ArraySubset`
  + `PHPUnit_Framework_Constraint_Attribute`
  + `PHPUnit_Framework_Constraint_Callback`
  + `PHPUnit_Framework_Constraint_ClassHasAttribute`
  + `PHPUnit_Framework_Constraint_ClassHasStaticAttribute`
  + `PHPUnit_Framework_Constraint_Composite`
  + `PHPUnit_Framework_Constraint_Count`
  + `PHPUnit_Framework_Constraint_ExceptionCode`
  + `PHPUnit_Framework_Constraint_ExceptionMessageRegExp`
  + `PHPUnit_Framework_Constraint_ExceptionMessage`
  + `PHPUnit_Framework_Constraint_Exception`
  + `PHPUnit_Framework_Constraint_FileExists`
  + `PHPUnit_Framework_Constraint_GreaterThan`
  + `PHPUnit_Framework_Constraint_IsAnything`
  + `PHPUnit_Framework_Constraint_IsEmpty`
  + `PHPUnit_Framework_Constraint_IsEqual`
  + `PHPUnit_Framework_Constraint_IsFalse`
  + `PHPUnit_Framework_Constraint_IsIdentical`
  + `PHPUnit_Framework_Constraint_IsInstanceOf`
  + `PHPUnit_Framework_Constraint_IsJson`
  + `PHPUnit_Framework_Constraint_IsNull`
  + `PHPUnit_Framework_Constraint_IsTrue`
  + `PHPUnit_Framework_Constraint_IsType`
  + `PHPUnit_Framework_Constraint_JsonMatches_ErrorMessageProvider`
  + `PHPUnit_Framework_Constraint_JsonMatches`
  + `PHPUnit_Framework_Constraint_LessThan`
  + `PHPUnit_Framework_Constraint_Not`
  + `PHPUnit_Framework_Constraint_ObjectHasAttribute`
  + `PHPUnit_Framework_Constraint_Or`
  + `PHPUnit_Framework_Constraint_PCREMatch`
  + `PHPUnit_Framework_Constraint_SameSize`
  + `PHPUnit_Framework_Constraint_StringContains`
  + `PHPUnit_Framework_Constraint_StringEndsWith`
  + `PHPUnit_Framework_Constraint_StringMatches`
  + `PHPUnit_Framework_Constraint_StringStartsWith`
  + `PHPUnit_Framework_Constraint_TraversableContainsOnly`
  + `PHPUnit_Framework_Constraint_TraversableContains`
  + `PHPUnit_Framework_Constraint_Xor`
  + `PHPUnit_Framework_Constraint`
  + `PHPUnit_Framework_Error_Deprecated`
  + `PHPUnit_Framework_Error_Notice`
  + `PHPUnit_Framework_Error_Warning`
  + `PHPUnit_Framework_Error`
  + `PHPUnit_Framework_ExceptionWrapper`
  + `PHPUnit_Framework_Exception`
  + `PHPUnit_Framework_ExpectationFailedException`
  + `PHPUnit_Framework_IncompleteTestCase`
  + `PHPUnit_Framework_IncompleteTestError`
  + `PHPUnit_Framework_IncompleteTest`
  + `PHPUnit_Framework_InvalidCoversTargetError`
  + `PHPUnit_Framework_InvalidCoversTargetException`
  + `PHPUnit_Framework_OutputError`
  + `PHPUnit_Framework_RiskyTestError`
  + `PHPUnit_Framework_RiskyTest`
  + `PHPUnit_Framework_SkippedTestCase`
  + `PHPUnit_Framework_SkippedTestError`
  + `PHPUnit_Framework_SkippedTestSuiteError`
  + `PHPUnit_Framework_SkippedTest`
  + `PHPUnit_Framework_SyntheticError`
  + `PHPUnit_Framework_TestFailure`
  + `PHPUnit_Framework_TestListener`
  + `PHPUnit_Framework_TestResult`
  + `PHPUnit_Framework_TestSuite_DataProvider`
  + `PHPUnit_Framework_TestSuite`
  + `PHPUnit_Framework_UnintentionallyCoveredCodeError`
  + `PHPUnit_Framework_Warning`
  + `PHPUnit_Runner_Filter_Factory`
* Add PHPUnit as a required dependancy
* Add a README
* Added in `void` return types to assert methods
* Commented out un-known types. Can now run with `assume_php=false`
* Fully stubbed out the protected values in `PHPUnit_Framework_Assert`
* Fully stubbed out the protected values in `PHPUnit_Framework_TestCase`
* Updated class return types to use the actual class for constraints

## 4.8.0

* Added:
  - Interfaces:
    + `PHPUnit_Framework_SelfDescribing`
    + `PHPUnit_Framework_Test`
* Fully stubbed out the public values in `PHPUnit_Framework_Assert`
* Fully stubbed out the public values in `PHPUnit_Framework_TestCase`
* Now requires HHVM 3.9 or later
* Replaced the `mixed` type with more specific ones, where possible
* Updated to match PHPUnit 4.8
* Used the new `classname<T>` type introduced in HHVM 3.9

## 4.5.0

Initial release to match PHPUnit 4.5
