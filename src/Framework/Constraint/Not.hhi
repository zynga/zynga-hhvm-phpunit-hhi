<?hh // decl

class PHPUnit_Framework_Constraint_Not<T>
  extends PHPUnit_Framework_Constraint<T> {
  public function __construct(
    protected PHPUnit_Framework_Constraint<T> $constraint,
  );

  public static function negate(string $string): string;
  public function toString(): string;
}
