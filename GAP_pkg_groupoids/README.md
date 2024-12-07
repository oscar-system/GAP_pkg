# GAP_pkg_groupoids

This is a generated Julia wrapper package for the GAP package groupoids 1.76.

## Usage

Using groupoids in your Julia session for technical reasons requires two steps:

    using GAP_pkg_groupoids
    GAP_pkg_groupoids.load()

This is necessary to deal with difference between how GAP and Julia
resolve dependencies between packages. In addition, it allows passings
arguments to load. For example:

    GAP_pkg_groupoids.load(banner=true, onlyneeded=false)

## Issues

Please report issues specific to this wrapper package at <https://github.com/oscar-system/GAP_pkg>.

Report general issues with the GAP package at <https://github.com/gap-packages/groupoids/issues>.

## License

This wrapper is under the MIT license (see file `LICENSE`).

The license of the wrapped GAP package is GPL-2.0-or-later.
