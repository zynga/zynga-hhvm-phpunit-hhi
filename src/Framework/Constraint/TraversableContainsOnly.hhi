<?hh // decl

class PHPUnit_Framework_Constraint_TraversableContainsOnly<T>
  extends PHPUnit_Framework_Constraint<Traversable<T>> {
  public function __construct(
    protected string $type,
    protected bool $isNativeType = true,
  );
  public function toString(): string;
}

