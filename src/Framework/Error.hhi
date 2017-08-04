<?hh // decl

class PHPUnit_Framework_Error extends PHPUnit_Framework_Exception {
  public function __construct(
    string $message,
    int $code,
    public string $file,
    public int $line,
    ?Exception $previous = null,
  );
}
