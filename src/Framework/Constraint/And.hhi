<?hh // decl

class PHPUnit_Framework_Constraint_And<T>
  extends PHPUnit_Framework_Constraint<T> {
  protected ?PHPUnit_Framework_Constraint<T> $lastConstraint;

  public function setConstraints(
    protected array<PHPUnit_Framework_Constraint<T>> $constraints,
  ): void;

  public function toString(): string;
}
