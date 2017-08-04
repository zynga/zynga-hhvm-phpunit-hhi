<?hh // decl

class PHPUnit_Runner_Filter_Factory {
  public function addFilter(ReflectionClass $filter, mixed $args): void;
  public function factory(
    Iterator $iterator,
    PHPUnit_Framework_TestSuite $suite,
  ): FilterIterator;
}
