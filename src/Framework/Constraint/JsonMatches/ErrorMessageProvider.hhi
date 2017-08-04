<?hh // decl

class PHPUnit_Framework_Constraint_JsonMatches_ErrorMessageProvider {
  public static function determineJsonError(
    int $error,
    string $prefix = '',
  ): string;
  public static function translateTypeToPrefix(string $type): string;
}
