<?hh // decl

class PHPUnit_Framework_Constraint_GreaterThan
  extends PHPUnit_Framework_Constraint<num> {
  public function __construct(protected num $value);
  public function toString(): string;
}
