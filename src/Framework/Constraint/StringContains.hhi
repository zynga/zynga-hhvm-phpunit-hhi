<?hh // decl

class PHPUnit_Framework_Constraint_StringContains
  extends PHPUnit_Framework_Constraint<string> {
  public function __construct(
    protected string $string,
    protected bool $ignoreCase = false,
  );

  public function toString(): string;
}
