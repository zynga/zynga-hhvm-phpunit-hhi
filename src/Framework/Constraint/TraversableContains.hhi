<?hh // decl

class PHPUnit_Framework_Constraint_TraversableContains<T>
  extends PHPUnit_Framework_Constraint<Traversable<T>> {
  public function __construct(
    protected mixed $value,
    protected bool $checkForObjectIdentity = true,
    protected bool $checkForNonObjectIdentity = false,
  );
  public function toString(): string;
}
