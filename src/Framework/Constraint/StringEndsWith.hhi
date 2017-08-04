<?hh // decl

class PHPUnit_Framework_Constraint_StringEndsWith
  extends PHPUnit_Framework_Constraint<string> {
  public function __construct(protected string $suffix);

  public function toString(): string;
}
