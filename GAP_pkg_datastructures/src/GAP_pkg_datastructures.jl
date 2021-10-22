# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_datastructures

using Pkg.Artifacts
using GAP

include("jll.jl")

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"datastructures"
    @debug "GAP package 'datastructures' path = " * path
    GAP.Globals.SetPackagePath(GapObj("datastructures"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("datastructures"))
    if res != true
        error("failed to load GAP package datastructures")
    end
end
end # module
