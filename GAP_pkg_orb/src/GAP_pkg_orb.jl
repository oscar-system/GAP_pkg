# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_orb

using Pkg.Artifacts
using GAP

include("jll.jl")

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"orb"
    @debug "GAP package 'orb' path = " * path
    GAP.Globals.SetPackagePath(GapObj("orb"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("orb"))
    if res != true
        error("failed to load GAP package orb")
    end
end
end # module
