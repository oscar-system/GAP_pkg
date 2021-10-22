# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_ferret

using Pkg.Artifacts
using GAP

include("jll.jl")

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"ferret"
    @debug "GAP package 'ferret' path = " * path
    GAP.Globals.SetPackagePath(GapObj("ferret"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("ferret"))
    if res != true
        error("failed to load GAP package ferret")
    end
end
end # module
