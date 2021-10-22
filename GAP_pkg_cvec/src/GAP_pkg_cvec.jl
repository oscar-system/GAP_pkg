# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_cvec

using Pkg.Artifacts
using GAP

include("jll.jl")

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"cvec"
    @debug "GAP package 'cvec' path = " * path
    GAP.Globals.SetPackagePath(GapObj("cvec"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("cvec"))
    if res != true
        error("failed to load GAP package cvec")
    end
end
end # module
