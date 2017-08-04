<?hh // decl

class PHPUnit_Framework_Constraint_ArrayHasKey
  extends PHPUnit_Framework_Constraint<array> {
  public function __construct(protected arraykey $key);
  public function toString(): string;
}
