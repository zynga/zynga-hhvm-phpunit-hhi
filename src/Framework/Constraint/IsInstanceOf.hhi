<?hh // decl

class PHPUnit_Framework_Constraint_IsInstanceOf<T>
  extends PHPUnit_Framework_Constraint<mixed> {
  public function __construct(protected classname<T> $className);
  public function toString(): string;
}
