# GAP_pkg_atlasrep

This is a generated Julia wrapper package for the GAP package AtlasRep 2.1.9.

## Usage

Using AtlasRep in your Julia session for technical reasons requires two steps:

    using GAP_pkg_atlasrep
    GAP_pkg_atlasrep.load()

This is necessary to deal with difference between how GAP and Julia
resolve dependencies between packages. In addition, it allows passings
arguments to load. For example:

    GAP_pkg_atlasrep.load(banner=true, onlyneeded=false)

## Issues

Please report issues specific to this wrapper package at <https://github.com/oscar-system/GAP_pkg>.


## License

This wrapper is under the MIT license (see file `LICENSE`).

The license of the wrapped GAP package is GPL-3.0-or-later.
