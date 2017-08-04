<?hh // decl

class PHPUnit_Framework_Constraint_ArraySubset
  extends PHPUnit_Framework_Constraint<array> {
  public function __construct(
    protected array $subset,
    protected bool $strict = false,
  );
  public function toString(): string;
}
