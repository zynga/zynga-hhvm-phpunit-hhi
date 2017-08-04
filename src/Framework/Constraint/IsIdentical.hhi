<?hh // decl

class PHPUnit_Framework_Constraint_IsIdentical
  extends PHPUnit_Framework_Constraint<mixed> {
  const float EPSILON = 0.0000000001;

  public function __construct(protected mixed $value);
  public function toString(): string;
}
