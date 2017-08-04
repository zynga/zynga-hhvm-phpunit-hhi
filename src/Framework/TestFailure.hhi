<?hh // decl

class PHPUnit_Framework_TestFailure {
  protected ?PHPUnit_Framework_Test $failedTest;
  protected Exception $thrownException;

  public function __construct(
    PHPUnit_Framework_Test $failedTest,
    Exception $thrownException,
  );

  public function toString(): string;
  public function getExceptionAsString(): string;

  public static function exceptionToString(Exception $e): string;

  public function getTestName(): string;
  public function failedTest(): ?PHPUnit_Framework_Test;
  public function thrownException(): Exception;
  public function exceptionMessage(): string;
  public function isFailure(): bool;
}
