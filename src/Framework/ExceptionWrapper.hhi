<?hh // decl

class PHPUnit_Framework_ExceptionWrapper extends PHPUnit_Framework_Exception {
  protected classname<Exception> $className;

  public function __construct(Exception $e);

  public function getClassName(): classname<Exception>;
  public function getPreviousWrapper(): ?PHPUnit_Framework_ExceptionWrapper;
  public function __toString(): string;
}
