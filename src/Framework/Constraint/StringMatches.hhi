<?hh // decl

class PHPUnit_Framework_Constraint_StringMatches
  extends PHPUnit_Framework_Constraint_PCREMatch {
  public function __construct(protected string $string);

  protected function createPatternFromFormat(string $string): string;
}
