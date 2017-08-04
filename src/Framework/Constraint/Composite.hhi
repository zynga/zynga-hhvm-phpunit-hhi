<?hh // decl

abstract class PHPUnit_Framework_Constraint_Composite<T>
  extends PHPUnit_Framework_Constraint<T> {
  public function __construct(
    protected PHPUnit_Framework_Constraint<T> $innerConstraint,
  );
}
