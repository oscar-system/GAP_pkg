# GAP_pkg_automgrp

This is a generated Julia wrapper package for the GAP package AutomGrp 1.3.2.

## Usage

Using AutomGrp in your Julia session for technical reasons requires two steps:

    using GAP_pkg_automgrp
    GAP_pkg_automgrp.load()

This is necessary to deal with difference between how GAP and Julia
resolve dependencies between packages. In addition, it allows passings
arguments to load. For example:

    GAP_pkg_automgrp.load(banner=true, onlyneeded=false)

## Issues

Please report issues specific to this wrapper package at <https://github.com/oscar-system/GAP_pkg>.

Report general issues with the GAP package at <https://github.com/gap-packages/automgrp/issues>.

## License

This wrapper is under the MIT license (see file `LICENSE`).

The license of the wrapped GAP package is MIT.
