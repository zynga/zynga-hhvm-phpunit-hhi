<?hh // decl

class PHPUnit_Framework_Constraint_LessThan
  extends PHPUnit_Framework_Constraint<num> {
  public function __construct(protected num $value);
  public function toString(): string;
}
