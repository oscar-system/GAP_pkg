# GAP_pkg_cvec

This is a generated Julia wrapper package for the GAP package cvec 2.7.6.

## Usage

Using cvec in your Julia session for technical reasons requires two steps:

    using GAP_pkg_cvec
    GAP_pkg_cvec.load()

This is necessary to deal with difference between how GAP and Julia
resolve dependencies between packages. In addition, it allows passings
arguments to load. For example:

    GAP_pkg_cvec.load(banner=true, onlyneeded=false)

## Issues

Please report issues specific to this wrapper package at <https://github.com/oscar-system/GAP_pkg>.

Report general issues with the GAP package at <https://github.com/gap-packages/cvec/issues>.

## License

This wrapper is under the MIT license (see file `LICENSE`).

The license of the wrapped GAP package is GPL-2.0-or-later.
