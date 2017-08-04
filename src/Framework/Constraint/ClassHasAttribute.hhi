<?hh // decl

class PHPUnit_Framework_Constraint_ClassHasAttribute<T>
  extends PHPUnit_Framework_Constraint<classname<T>> {
  public function __construct(protected string $attributeName);

  public function toString(): string;
}
