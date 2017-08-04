<?hh // decl

class PHPUnit_Framework_Constraint_ExceptionMessage
  extends PHPUnit_Framework_Constraint<Exception> {
  public function __construct(protected string $expectedMessage);

  public function toString(): string;
}
