<?hh // decl

class PHPUnit_Framework_IncompleteTestCase
  extends PHPUnit_Framework_TestCase {
  protected bool $useErrorHandler = false;
  protected bool $useOutputBuffering = false;

  public function __construct<T>(
    classname<T> $className,
    string $methodName,
    protected string $message,
  );
}
