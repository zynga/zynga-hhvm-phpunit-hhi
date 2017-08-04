<?hh // decl

class PHPUnit_Framework_Constraint_IsEqual
  extends PHPUnit_Framework_Constraint<mixed> {
  public function __construct(
    protected mixed $value,
    protected float $delta = 0.0,
    protected int $maxDepth = 10,
    protected bool $canonicalize = false,
    bool $ignoreCase = false,
  );
  public function toString(): string;
}
