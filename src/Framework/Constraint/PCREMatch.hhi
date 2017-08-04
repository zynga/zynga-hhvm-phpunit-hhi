<?hh // decl

class PHPUnit_Framework_Constraint_PCREMatch
  extends PHPUnit_Framework_Constraint<string> {
  public function __construct(protected string $pattern);

  public function toString(): string;
}
