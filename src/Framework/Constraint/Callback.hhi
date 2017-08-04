<?hh // decl

class PHPUnit_Framework_Constraint_Callback<T>
  extends PHPUnit_Framework_Constraint<T> {
  public function __construct(private (function(T): bool) $callback);

  public function toString(): string;
}
