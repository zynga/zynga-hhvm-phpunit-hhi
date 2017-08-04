<?hh // decl

class PHPUnit_Framework_ExpectationFailedException
  extends PHPUnit_Framework_AssertionFailedError {
  public function __construct(
    string $Message,
    protected /*?SebastianBergmann\Comparator\ComparisonFailure */ $comparisonFailure = null,
    ?Exception $previous = null,
  );
  public function getComparisionFailure(
  ) /* :?SebastianBergmann\Comparator\ComparisonFailure */;
}
