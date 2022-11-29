# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_xmodalg

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"xmodalg"
    @debug "GAP package 'xmodalg' path = " * path
    GAP.Globals.SetPackagePath(GapObj("xmodalg"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("xmodalg"))
    if res != true
        error("failed to load GAP package xmodalg")
    end
end
end # module
