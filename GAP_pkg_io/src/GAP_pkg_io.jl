# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_io

using Pkg.Artifacts
using GAP

include("jll.jl")

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"io"
    @debug "GAP package 'io' path = " * path
    GAP.Globals.SetPackagePath(GapObj("io"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("io"))
    if res != true
        error("failed to load GAP package io")
    end
end
end # module
