<?hh // decl

abstract class PHPUnit_Framework_Constraint<T>
  implements Countable, PHPUnit_Framework_SelfDescribing {
  protected /*SebastianBergmann\Exporter\Exporter */ $exporter;

  public function __construct();

  public function evaluate(
    T $other,
    string $description = '',
    bool $returnResult = false,
  ): ?bool;

  public function matches(T $other): bool;

  public function count(): int;

  protected function fail(
    T $other,
    string $decription,
    /*?SebastianBergmann\Comparator\ComparisonFailure*/ $comparisonFailure = null,
  ): void;
  protected function additionalFailureDescription(T $other): string;
  protected function failureDescription(T $other): string;
}
