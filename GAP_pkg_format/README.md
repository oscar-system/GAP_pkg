# GAP_pkg_format

This is a generated Julia wrapper package for the GAP package FORMAT 1.4.4.

## Usage

Using FORMAT in your Julia session for technical reasons requires two steps:

    using GAP_pkg_format
    GAP_pkg_format.load()

This is necessary to deal with difference between how GAP and Julia
resolve dependencies between packages. In addition, it allows passings
arguments to load. For example:

    GAP_pkg_format.load(banner=true, onlyneeded=false)

## Issues

Please report issues specific to this wrapper package at <https://github.com/oscar-system/GAP_pkg>.

Report general issues with the GAP package at <https://github.com/gap-packages/format/issues>.

## License

This wrapper is under the MIT license (see file `LICENSE`).

The license of the wrapped GAP package is GPL-2.0-or-later.
