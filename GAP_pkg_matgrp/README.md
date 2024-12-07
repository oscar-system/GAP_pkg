# GAP_pkg_matgrp

This is a generated Julia wrapper package for the GAP package matgrp 0.71.

## Usage

Using matgrp in your Julia session for technical reasons requires two steps:

    using GAP_pkg_matgrp
    GAP_pkg_matgrp.load()

This is necessary to deal with difference between how GAP and Julia
resolve dependencies between packages. In addition, it allows passings
arguments to load. For example:

    GAP_pkg_matgrp.load(banner=true, onlyneeded=false)

## Issues

Please report issues specific to this wrapper package at <https://github.com/oscar-system/GAP_pkg>.

Report general issues with the GAP package at <https://github.com/hulpke/matgrp//issues>.

## License

This wrapper is under the MIT license (see file `LICENSE`).

The license of the wrapped GAP package is GPL-2.0 OR GPL-3.0.
