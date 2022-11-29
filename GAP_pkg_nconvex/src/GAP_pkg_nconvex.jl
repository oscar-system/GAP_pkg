# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_nconvex

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"nconvex"
    @debug "GAP package 'nconvex' path = " * path
    GAP.Globals.SetPackagePath(GapObj("nconvex"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("nconvex"))
    if res != true
        error("failed to load GAP package nconvex")
    end
end
end # module
