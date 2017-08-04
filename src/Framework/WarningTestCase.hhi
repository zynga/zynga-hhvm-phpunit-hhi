<?hh // decl

class PHPUnit_Framework_WarningTestCase extends PHPUnit_Framework_TestCase {
  protected bool $useErrorHandler = false;

  public function __construct(protected string $message);

  public function getMessage(): string;
}
