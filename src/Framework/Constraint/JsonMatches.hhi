<?hh // decl

class PHPUnit_Framework_Constraint_JsonMatches
  extends PHPUnit_Framework_Constraint<string> {
  public function __construct(protected string $value);
  public function toString(): string;
}
