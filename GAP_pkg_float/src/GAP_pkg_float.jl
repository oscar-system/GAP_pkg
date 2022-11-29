# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_float

using Pkg.Artifacts
using GAP

include("jll.jl")

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"float"
    @debug "GAP package 'float' path = " * path
    GAP.Globals.SetPackagePath(GapObj("float"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("float"))
    if res != true
        error("failed to load GAP package float")
    end
end
end # module
