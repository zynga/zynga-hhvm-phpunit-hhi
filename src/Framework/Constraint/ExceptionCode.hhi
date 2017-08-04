<?hh // decl

class PHPUnit_Framework_Constraint_ExceptionCode
  extends PHPUnit_Framework_Constraint<Exception> {
  public function __construct(protected int $expectedCode);

  public function toString(): string;
}
