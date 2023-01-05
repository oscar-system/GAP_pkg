# GAP_pkg_irredsol

This is a generated Julia wrapper package for the GAP package IRREDSOL 1.4.4.

## Usage

Using IRREDSOL in your Julia session for technical reasons requires two steps:

    using GAP_pkg_irredsol
    GAP_pkg_irredsol.load()

This is necessary to deal with difference between how GAP and Julia
resolve dependencies between packages. In addition, it allows passings
arguments to load. For example:

    GAP_pkg_irredsol.load(banner=true, onlyneeded=false)

## Issues

Please report issues specific to this wrapper package at <https://github.com/oscar-system/GAP_pkg>.

Report general issues with the GAP package at <https://github.com/bh11/irredsol/issues>.

## License

This wrapper is under the MIT license (see file `LICENSE`).

The license of the wrapped GAP package is BSD-2-Clause.
