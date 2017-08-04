<?hh // decl

class PHPUnit_Framework_Constraint_Or<T>
  extends PHPUnit_Framework_Constraint<T> {
  protected array<PHPUnit_Framework_Constraint<T>> $constraints = [];

  public function setConstraints(
    array<PHPUnit_Framework_Constraint<T>> $constraints,
  ): void;

  public function toString(): string;
}
