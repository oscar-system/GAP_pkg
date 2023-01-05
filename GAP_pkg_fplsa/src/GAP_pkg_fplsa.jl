# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_fplsa

using Pkg.Artifacts
using GAP

include("jll.jl")

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"fplsa"
    @debug "GAP package 'fplsa' path = " * path
    GAP.Globals.SetPackagePath(GapObj("fplsa"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("fplsa"))
    if res != true
        error("failed to load GAP package fplsa")
    end
end
end # module
