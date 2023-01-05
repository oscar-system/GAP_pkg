# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_ace

using Pkg.Artifacts
using GAP

include("jll.jl")

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"ace"
    @debug "GAP package 'ace' path = " * path
    GAP.Globals.SetPackagePath(GapObj("ace"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("ace"))
    if res != true
        error("failed to load GAP package ace")
    end
end
end # module
