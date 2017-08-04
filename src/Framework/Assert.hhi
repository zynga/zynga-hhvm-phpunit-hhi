<?hh // decl

abstract class PHPUnit_Framework_Assert {
  // Assertions
  public function assertArrayHasKey(
    arraykey $key,
    array $array,
    string $message = '',
  ): void;
  public function assertArrayNotHasKey(
    arraykey $key,
    array $array,
    string $message = '',
  ): void;
  public function assertArraySubset(
    array $subset,
    array $array,
    bool $strict = false,
    string $message = '',
  ): void;
  public function assertAttributeContains(
    mixed $needle,
    string $name,
    mixed $object,
    string $message = '',
  ): void;
  public function assertAttributeContainsOnly(
    string $type,
    string $name,
    mixed $object,
    ?bool $isNativeType = null,
    string $message = '',
  ): void;
  public function assertAttributeCount(
    int $expected,
    string $name,
    mixed $object,
    string $message = '',
  ): void;
  public function assertAttributeEmpty(
    string $name,
    mixed $object,
    string $message = '',
  ): void;
  public function assertAttributeEquals(
    mixed $expect,
    string $name,
    mixed $object,
    string $msg = '',
    float $delta = 0.0,
    int $maxDepth = 10,
    bool $canonicalize = false,
    bool $ignoreCase = false,
  ): void;
  public function assertAttributeGreaterThan(
    mixed $expected,
    string $name,
    mixed $object,
    string $message = '',
  ): void;
  public function assertAttributeGreaterThanOrEqual(
    mixed $expected,
    string $name,
    mixed $object,
    string $message = '',
  ): void;
  public function assertAttributeInstanceOf<T>(
    classname<T> $expected,
    string $name,
    mixed $object,
    string $msg = '',
  ): void;
  public function assertAttributeInternalType(
    string $expected,
    string $name,
    mixed $object,
    string $message = '',
  ): void;
  public function assertAttributeLessThan(
    mixed $expected,
    string $name,
    mixed $object,
    string $message = '',
  ): void;
  public function assertAttributeLessThanOrEqual(
    mixed $expected,
    string $name,
    mixed $object,
    string $message = '',
  ): void;
  public function assertAttributeNotContains(
    mixed $needle,
    string $name,
    mixed $object,
    string $message = '',
  ): void;
  public function assertAttributeNotContainsOnly(
    string $type,
    string $name,
    mixed $object,
    ?bool $isNativeType = null,
    string $message = '',
  ): void;
  public function assertAttributeNotCount(
    int $expected,
    string $name,
    mixed $object,
    string $message = '',
  ): void;
  public function assertAttributeNotEmpty(
    string $name,
    mixed $object,
    string $message = '',
  ): void;
  public function assertAttributeNotEquals(
    mixed $expect,
    string $name,
    mixed $object,
    string $msg = '',
    float $delta = 0.0,
    int $maxDepth = 10,
    bool $canonicalize = false,
    bool $ignoreCase = false,
  ): void;
  public function assertAttributeNotInstanceOf<T>(
    classname<T> $expected,
    string $name,
    mixed $object,
    string $msg = '',
  ): void;
  public function assertAttributeNotInternalType(
    string $expected,
    string $name,
    mixed $object,
    string $message = '',
  ): void;
  public function assertAttributeNotSame(
    mixed $expect,
    string $name,
    mixed $object,
    string $msg = '',
  ): void;
  public function assertAttributeSame(
    mixed $expect,
    string $name,
    mixed $object,
    string $msg = '',
  ): void;
  public function assertClassHasAttribute(
    string $name,
    string $class,
    string $message = '',
  ): void;
  public function assertClassHasStaticAttribute(
    string $name,
    string $class,
    string $message = '',
  ): void;
  public function assertClassNotHasAttribute(
    string $name,
    string $class,
    string $message = '',
  ): void;
  public function assertClassNotHasStaticAttribute(
    string $name,
    string $class,
    string $message = '',
  ): void;
  public function assertContains(
    mixed $needle,
    mixed $array,
    string $msg = '',
  ): void;
  public function assertContainsOnly(
    string $type,
    mixed $array,
    ?bool $isNativeType = null,
    string $message = '',
  ): void;
  public function assertContainsOnlyInstancesOf<T>(
    classname<T> $class,
    mixed $array,
    string $message = '',
  ): void;
  public function assertCount(
    int $expected,
    mixed $haystack,
    string $message = '',
  ): void;
  public function assertDirectoryExists(
    string $directory,
    string $message = '',
  ): void;
  public function assertDirectoryIsReadable(
    string $directory,
    string $message = '',
  ): void;
  public function assertDirectoryIsWritable(
    string $directory,
    string $message = '',
  ): void;
  public function assertDirectoryNotExists(
    string $directory,
    string $message = '',
  ): void;
  public function assertDirectoryNotIsReadable(
    string $directory,
    string $message = '',
  ): void;
  public function assertDirectoryNotIsWritable(
    string $directory,
    string $message = '',
  ): void;
  public function assertEmpty(mixed $actual, string $message = ''): void;
  public function assertEqualXMLStructure(
    /*DOMElement*/ $expected,
    /*DOMElement*/ $actual,
    bool $check = false,
    string $message = '',
  ): void;
  public function assertEquals(
    mixed $expect,
    mixed $actual,
    string $msg = '',
    float $delta = 0.0,
    int $maxDepth = 10,
    bool $canonicalize = false,
    bool $ignoreCase = false,
  ): void;
  public function assertFalse(mixed $condition, string $message = ''): void;
  public function assertFileEquals(
    string $expected,
    string $actual,
    string $message = '',
  ): void;
  public function assertFileExists(
    string $filename,
    string $message = '',
  ): void;
  public function assertFileIsReadable(
    string $file,
    string $message = '',
  ): void;
  public function assertFileIsWritable(
    string $file,
    string $message = '',
  ): void;
  public function assertFileNotEquals(
    string $expected,
    string $actual,
    string $message = '',
  ): void;
  public function assertFileNotExists(
    string $filename,
    string $message = '',
  ): void;
  public function assertFileNotIsReadable(
    string $file,
    string $message = '',
  ): void;
  public function assertFileNotIsWritable(
    string $file,
    string $message = '',
  ): void;
  public function assertFinite(mixed $action, string $message = ''): void;
  public function assertGreaterThan(
    mixed $expected,
    mixed $actual,
    string $message = '',
  ): void;
  public function assertGreaterThanOrEqual(
    mixed $expected,
    mixed $actual,
    string $message = '',
  ): void;
  public function assertInfinite(mixed $action, string $message = ''): void;
  public function assertInstanceOf<T>(
    classname<T> $expected,
    mixed $actual,
    string $msg = '',
  ): void;
  public function assertInternalType(
    string $expected,
    mixed $actual,
    string $message = '',
  ): void;
  public function assertIsReadable(
    string $filename,
    string $message = '',
  ): void;
  public function assertIsWritable(
    string $filename,
    string $message = '',
  ): void;
  public function assertJson(string $actual, string $message = ''): void;
  public function assertJsonFileEqualsJsonFile(
    string $expected,
    string $actual,
    string $message = '',
  ): void;
  public function assertJsonFileNotEqualsJsonFile(
    string $expected,
    string $actual,
    string $message = '',
  ): void;
  public function assertJsonStringEqualsJsonFile(
    string $expected,
    string $actual,
    string $message = '',
  ): void;
  public function assertJsonStringEqualsJsonString(
    string $exepcted,
    string $actual,
    string $message = '',
  ): void;
  public function assertJsonStringNotEqualsJsonFile(
    string $expected,
    string $actual,
    string $message = '',
  ): void;
  public function assertJsonStringNotEqualsJsonString(
    string $exepcted,
    string $actual,
    string $message = '',
  ): void;
  public function assertLessThan(
    mixed $expected,
    mixed $actual,
    string $message = '',
  ): void;
  public function assertLessThanOrEqual(
    mixed $expected,
    mixed $actual,
    string $message = '',
  ): void;
  public function assertNan(mixed $action, string $message = ''): void;
  public function assertNotContains(
    mixed $needle,
    mixed $array,
    string $msg = '',
  ): void;
  public function assertNotContainsOnly(
    string $type,
    mixed $array,
    ?bool $isNativeType = null,
    string $message = '',
  ): void;
  public function assertNotCount(
    int $expected,
    mixed $haystack,
    string $message = '',
  ): void;
  public function assertNotEmpty(mixed $actual, string $message = ''): void;
  public function assertNotEquals(
    mixed $expect,
    mixed $actual,
    string $msg = '',
    float $delta = 0.0,
    int $maxDepth = 10,
    bool $canonicalize = false,
    bool $ignoreCase = false,
  ): void;
  public function assertNotFalse(
    mixed $condition,
    string $message = '',
  ): void;
  public function assertNotInstanceOf<T>(
    classname<T> $expected,
    mixed $actual,
    string $msg = '',
  ): void;
  public function assertNotInternalType(
    string $expected,
    mixed $actual,
    string $message = '',
  ): void;
  public function assertNotIsReadable(
    string $filename,
    string $message = '',
  ): void;
  public function assertNotIsWritable(
    string $filename,
    string $message = '',
  ): void;
  public function assertNotNull(mixed $actual, string $msg = ''): void;
  public function assertNotRegExp(
    string $pattern,
    string $string,
    string $message = '',
  ): void;
  public function assertNotSame(
    mixed $expect,
    mixed $actual,
    string $msg = '',
  ): void;
  public function assertNotSameSize(
    array $expected,
    array $actual,
    string $message = '',
  ): void;
  public function assertNotTrue(
    mixed $conditions,
    string $message = '',
  ): void;
  public function assertNull(mixed $actual, string $msg = ''): void;
  public function assertObjectHasAttribute(
    string $name,
    mixed $object,
    string $message = '',
  ): void;
  public function assertObjectNotHasAttribute(
    string $name,
    mixed $object,
    string $message = '',
  ): void;
  public function assertRegExp(
    string $pattern,
    string $string,
    string $message = '',
  ): void;
  public function assertSame(
    mixed $expect,
    mixed $actual,
    string $msg = '',
  ): void;
  public function assertSameSize(
    array $expected,
    array $actual,
    string $message = '',
  ): void;
  public function assertStringEndsNotWith(
    string $suffix,
    string $string,
    string $message = '',
  ): void;
  public function assertStringEndsWith(
    string $suffix,
    string $string,
    string $message = '',
  ): void;
  public function assertStringEqualsFile(
    string $expected,
    string $catual,
    string $message = '',
  ): void;
  public function assertStringMatchesFormat(
    string $format,
    string $string,
    string $message = '',
  ): void;
  public function assertStringMatchesFormatFile(
    string $format,
    string $string,
    string $message = '',
  ): void;
  public function assertStringNotEqualsFile(
    string $expected,
    string $catual,
    string $message = '',
  ): void;
  public function assertStringNotMatchesFormat(
    string $format,
    string $string,
    string $message = '',
  ): void;
  public function assertStringNotMatchesFormatFile(
    string $format,
    string $string,
    string $message = '',
  ): void;
  public function assertStringStartsNotWith(
    string $prefix,
    string $string,
    string $message = '',
  ): void;
  public function assertStringStartsWith(
    string $prefix,
    string $string,
    string $message = '',
  ): void;
  public function assertThat<T>(
    mixed $value,
    PHPUnit_Framework_Constraint<T> $constraint,
    string $message = '',
  ): void;
  public function assertTrue(mixed $conditions, string $message = ''): void;
  public function assertXmlFileEqualsXmlFile(
    string $expected,
    string $actual,
    string $message = '',
  ): void;
  public function assertXmlFileNotEqualsXmlFile(
    string $expected,
    string $actual,
    string $message = '',
  ): void;
  public function assertXmlStringEqualsXmlFile(
    string $expected,
    string $actual,
    string $message = '',
  ): void;
  public function assertXmlStringEqualsXmlString(
    string $expected,
    string $actual,
    string $message = '',
  ): void;
  public function assertXmlStringNotEqualsXmlFile(
    string $expected,
    string $actual,
    string $message = '',
  ): void;
  public function assertXmlStringNotEqualsXmlString(
    string $expected,
    string $actual,
    string $message = '',
  ): void;

  // Test control
  public function fail(string $msg = ''): noreturn;
  public function markTestIncomplete(string $message = ''): noreturn;
  public function markTestSkipped(string $message = ''): noreturn;

  // Constraints
  public function anything(): PHPUnit_Framework_Constraint_IsAnything;
  public function arrayHasKey(
    arraykey $key,
  ): PHPUnit_Framework_Constraint_ArrayHasKey;
  public function attribute<T>(
    PHPUnit_Framework_Constraint<T> $constraint,
    string $attributeName,
  ): PHPUnit_Framework_Constraint_Attribute<T>;
  public function attributeEqualTo<T>(
    string $attributeName,
    mixed $value,
    float $delta = 0.0,
    int $maxDepth = 10,
    bool $canonicalize = false,
    bool $ignoreCase = false,
  ): PHPUnit_Framework_Constraint_Attribute<T>;
  public function callback<T>(
    (function(T): bool) $callback,
  ): PHPUnit_Framework_Constraint_Callback<T>;
  public function classHasAttribute<T>(
    string $attributeName,
  ): PHPUnit_Framework_Constraint_ClassHasAttribute<T>;
  public function classHasStaticAttribute<T>(
    string $attributeName,
  ): PHPUnit_Framework_Constraint_ClassHasStaticAttribute<T>;
  public function contains<T>(
    mixed $value,
    bool $checkForObjectIdentity = true,
    bool $checkForNonObjectIdentity = false,
  ): PHPUnit_Framework_Constraint_TraversableContains<T>;
  public function containsOnly<T>(
    string $type,
  ): PHPUnit_Framework_Constraint_TraversableContainsOnly<T>;
  public function containsOnlyInstancesOf<T>(
    classname<T> $className,
  ): PHPUnit_Framework_Constraint_TraversableContainsOnly<classname<T>>;
  public function countOf<T>(
    int $count,
  ): PHPUnit_Framework_Constraint_Count<T>;
  public function directoryExists(
  ): PHPUnit_Framework_Constraint_DirectoryExists;
  public function equalTo(
    mixed $value,
    float $delta = 0.0,
    int $maxDepth = 10,
    bool $canonicalize = false,
    bool $ignoreCase = false,
  ): PHPUnit_Framework_Constraint_IsEqual;
  public function fileExists(): PHPUnit_Framework_Constraint_FileExists;
  public function greaterThan(
    $value,
  ): PHPUnit_Framework_Constraint_GreaterThan;
  public function greaterThanOrEqual(
    $value,
  ): PHPUnit_Framework_Constraint_Or<num>;
  public function identicalTo(
    $value,
  ): PHPUnit_Framework_Constraint_IsIdentical;
  public function isEmpty(): PHPUnit_Framework_Constraint_IsEmpty;
  public function isFalse(): PHPUnit_Framework_Constraint_IsFalse;
  public function isFinite(): PHPUnit_Framework_Constraint_IsFinite;
  public function isInfinite(): PHPUnit_Framework_Constraint_IsInfinite;
  public function isInstanceOf<T>(
    classname<T> $className,
  ): PHPUnit_Framework_Constraint_IsInstanceOf<T>;
  public function isJson(): PHPUnit_Framework_Constraint_IsJson;
  public function isNan(): PHPUnit_Framework_Constraint_IsNan;
  public function isNull(): PHPUnit_Framework_Constraint_IsNull;
  public function isReadable(): PHPUnit_Framework_Constraint_IsReadable;
  public function isTrue(): PHPUnit_Framework_Constraint_IsTrue;
  public function isType(string $type): PHPUnit_Framework_Constraint_IsType;
  public function isWritable(): PHPUnit_Framework_Constraint_IsWritable;
  public function lessThan($value): PHPUnit_Framework_Constraint_LessThan;
  public function lessThanOrEqual(
    $value,
  ): PHPUnit_Framework_Constraint_Or<num>;
  public function logicalAnd<T>(
    PHPUnit_Framework_Constraint<T> ...$constraints
  ): PHPUnit_Framework_Constraint_And<T>;
  public function logicalNot<T>(
    PHPUnit_Framework_Constraint<T> $constraint,
  ): PHPUnit_Framework_Constraint_Not<T>;
  public function logicalOr<T>(
    PHPUnit_Framework_Constraint<T> ...$constraints
  ): PHPUnit_Framework_Constraint_Or<T>;
  public function logicalXor<T>(
    PHPUnit_Framework_Constraint<T> ...$constraints
  ): PHPUnit_Framework_Constraint_Xor<T>;
  public function matches(
    string $string,
  ): PHPUnit_Framework_Constraint_StringMatches;
  public function matchesRegularExpression(
    string $pattern,
  ): PHPUnit_Framework_Constraint_PCREMatch;
  public function objectHasAttribute<T>(
    string $attributeName,
  ): PHPUnit_Framework_Constraint_ObjectHasAttribute<T>;
  public function stringContains(
    string $string,
    bool $case = true,
  ): PHPUnit_Framework_Constraint_StringContains;
  public function stringEndsWith(
    string $suffix,
  ): PHPUnit_Framework_Constraint_StringEndsWith;
  public function stringStartsWith(
    string $prefix,
  ): PHPUnit_Framework_Constraint_StringStartsWith;

  // Helpers
  // These don't have return types as they can be anything, so leave them
  // untyped rather than mixed.
  public static function getObjectAttribute($object, string $attributeName);
  public static function getStaticAttribute<T>(
    classname<T> $className,
    string $attributeName,
  );
  public static function readAttribute($classOrObject, string $attributeName);

  public static function getCount(): int;
  public static function resetCount(): void;
}
