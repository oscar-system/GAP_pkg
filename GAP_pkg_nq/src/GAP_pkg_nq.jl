# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_nq

using Pkg.Artifacts
using GAP

include("jll.jl")

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"nq"
    @debug "GAP package 'nq' path = " * path
    GAP.Globals.SetPackagePath(GapObj("nq"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("nq"))
    if res != true
        error("failed to load GAP package nq")
    end
end
end # module
