<?hh // decl

class PHPUnit_Framework_Constraint_Count<T>
  extends PHPUnit_Framework_Constraint<T> {
  public function __construct(protected int $expected);
  protected function getCountOf(T $other): ?int;
  protected function getCountOfGenerator(Generator $generator): int;
  public function toString(): string;
}
