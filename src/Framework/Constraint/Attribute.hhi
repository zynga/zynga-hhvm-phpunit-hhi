<?hh // decl

class PHPUnit_Framework_Constraint_Attribute<T>
  extends PHPUnit_Framework_Constraint_Composite<T> {
  public function __construct(
    PHPUnit_Framework_Constraint<T> $constraint,
    protected string $attributeName,
  );

  public function toString(): string;
  public function evaluate(
    $other,
    string $description = '',
    bool $returnResult = false,
  ): ?bool;
}
