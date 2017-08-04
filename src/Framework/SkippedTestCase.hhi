<?hh // decl

class PHPUnit_Framework_SkippedTestCase extends PHPUnit_Framework_TestCase {
  protected bool $useErrorHandler = false;
  protected bool $useOutputBuffering = false;

  public function __construct(protected string $message);
}
