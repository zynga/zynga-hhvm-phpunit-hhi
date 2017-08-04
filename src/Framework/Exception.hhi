<?hh // decl

class PHPUnit_Framework_Exception extends RuntimeException
  implements PHPUnit_Exception {
  protected array<shape(
    'function' => string,
    'line' => ?int,
    'file' => ?string,
    'class' => ?string,
    'object' => mixed,
    'type' => ?string,
  )> $serializableTrace;

  public function __construct(
    string $message,
    int $code = 0,
    ?Exception $previous = null,
  );

  public function getSerializableTrace(
  ): array<shape(
    'function' => string,
    'line' => ?int,
    'file' => ?string,
    'class' => ?string,
    'object' => mixed,
    'type' => ?string,
  )>;

  public function __toString(): string;

  public function __sleep();
}
