<?hh // decl

class PHPUnit_Framework_Constraint_ExceptionMessageRegExp
  extends PHPUnit_Framework_Constraint<Exception> {
  public function __construct(protected string $expectedMessageRegExp);

  public function toString(): string;
}
