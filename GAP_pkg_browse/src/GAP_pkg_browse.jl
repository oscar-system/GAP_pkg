# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_browse

using Pkg.Artifacts
using GAP

include("jll.jl")

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"browse"
    @debug "GAP package 'browse' path = " * path
    GAP.Globals.SetPackagePath(GapObj("browse"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("browse"))
    if res != true
        error("failed to load GAP package browse")
    end
end
end # module
