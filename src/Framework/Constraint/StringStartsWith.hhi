<?hh // decl

class PHPUnit_Framework_Constraint_StringStartsWith
  extends PHPUnit_Framework_Constraint<string> {
  public function __construct(protected string $prefix);

  public function toString(): string;
}
