# HHI files for PHPUnit

[![build status][build-image]][build-link]

This package provides HHI files for the main [PHPUnit package][phpunit]. It does
not provide any runtime functionality.

HHI files are files which tell the Hack tools about non-Hack code, providing the
necessary names and types to allow Hack to make sure you're using the non-Hack
code correctly.

## Installation

The easiest way to install this package is with [Composer][composer].

To do so, add `"91carriage/phpunit-hhi": "~5.7.0"` to the `require-dev` section
of your `composer.json` or run
`composer require --dev '91carriage/phpunit-hhi:~5.7.0'`.

It is not recommended to install this as part of your `requires` section as it
should only be used during development.

Manual installation simply involves downloading the provided source code and
copying it into your repository.

## Issues

Issues can be submitted to the [issue tacker][issues].

If you are unable to create an issue through this, or think that it should not
be publicly disclosed, they can also be emailed directly to
[issues@91carriage.com][issue-email] or brought to my attention on IRC, where I
go by the handles `simon_w` and `simon_w|air` in the offical [#hhvm][hhvm-irc]
channel on FreeNode.

## Contributing

Contributions are very welcome. Please make sure that you run `hh_client` in the
source directory with `assume_php=false` in your `.hhconfig` and no errors are
reported.

### Code style

For Hack files, the coding style is enforced by the `hh_format` command, which
is included with the Hack tools alongside `hh_client`. As the HHI files are decl
files, you need to run `hh_format` with the `--yolo` option for these files.

For other files, the basic requirements are:
* Lines are no more than 80 characters wherever possible.
* Indentation is 2 spaces.
* Unix-style (`\n`) line endings.

### File types

* The HHI files should all be in [decl mode][decl-mode].
* The test files should extend `HHITest` and be in [strict mode][strict-mode].
* The HHIT files should be in [strict mode][strict-mode].

### Non-existent class types

If an object type is required and that object is in a different package or is
built into HHVM and doesn't yet have a HHI file, add the expected type as a
comment.

For example, if the function `foo` returns a `SplObject` and there's no inbuilt
HHI file for `SplObject`, the definition of `foo` would be:

```
function foo() /*: SplObject*/;
```

## License

This code is provided under the MIT (X11 variant) license. The full text of
which can be found in the [LICENSE.md](LICENSE.md) file.

<!-- Please keep these sorted alphabetically. -->
[build-image]: https://git.simon.geek.nz/91-carriage/phpunit-hhi/badges/phpunit-5.7/build.svg
[build-link]: https://git.simon.geek.nz/91-carriage/phpunit-hhi/commits/phpunit-5.7
[composer]: https://getcomposer.org/
[decl-mode]: http://docs.hhvm.com/hack/typechecker/modes#decl-mode
[strict-mode]: http://docs.hhvm.com/hack/typechecker/modes#strict-mode
[hhvm-irc]: http://webchat.freenode.net/?channels=hhvm
[issue-email]: mailto:issues@91carriage.com
[issues]: https://git.simon.geek.nz/91-carriage/phpunit-hhi/issues
[phpunit]: https://phpunit.de/
