<?hh // decl

class PHPUnit_Framework_Constraint_IsType
  extends PHPUnit_Framework_Constraint<mixed> {
  const string TYPE_ARRAY = 'array';
  const string TYPE_BOOL = 'bool';
  const string TYPE_FLOAT = 'float';
  const string TYPE_INT = 'int';
  const string TYPE_NULL = 'null';
  const string TYPE_NUMERIC = 'numeric';
  const string TYPE_OBJECT = 'object';
  const string TYPE_RESOURCE = 'resource';
  const string TYPE_STRING = 'string';
  const string TYPE_SCALAR = 'scalar';
  const string TYPE_CALLABLE = 'callable';

  public function __construct(protected string $type);
  public function toString(): string;
}
