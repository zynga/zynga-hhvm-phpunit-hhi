<?hh // decl

class PHPUnit_Framework_Constraint_Exception
  extends PHPUnit_Framework_Constraint<Exception> {
  public function __construct(protected classname<Exception> $className);

  public function toString(): string;
}
