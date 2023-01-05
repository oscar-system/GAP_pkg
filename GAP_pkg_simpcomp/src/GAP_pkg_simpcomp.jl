# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_simpcomp

using Pkg.Artifacts
using GAP

include("jll.jl")

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"simpcomp"
    @debug "GAP package 'simpcomp' path = " * path
    GAP.Globals.SetPackagePath(GapObj("simpcomp"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("simpcomp"))
    if res != true
        error("failed to load GAP package simpcomp")
    end
end
end # module
