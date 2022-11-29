# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_hapcryst

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"hapcryst"
    @debug "GAP package 'hapcryst' path = " * path
    GAP.Globals.SetPackagePath(GapObj("hapcryst"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("hapcryst"))
    if res != true
        error("failed to load GAP package hapcryst")
    end
end
end # module
