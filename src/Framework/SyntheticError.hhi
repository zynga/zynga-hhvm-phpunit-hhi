<?hh // decl

class PHPUnit_Framework_SyntheticError
  extends PHPUnit_Framework_AssertionFailedError {
  public function __construct(
    string $Message,
    int $code,
    protected string $file,
    protected int $line,
    protected array $trace,
  );
  public function getSyntheticFile(): string;
  public function getSyntheticLine(): int;
  public function getSyntheticTrace(): array;
}
