# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_xgap

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"xgap"
    @debug "GAP package 'xgap' path = " * path
    GAP.Globals.SetPackagePath(GapObj("xgap"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("xgap"))
    if res != true
        error("failed to load GAP package xgap")
    end
end
end # module
