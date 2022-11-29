# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_toolsforhomalg

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"toolsforhomalg"
    @debug "GAP package 'toolsforhomalg' path = " * path
    GAP.Globals.SetPackagePath(GapObj("toolsforhomalg"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("toolsforhomalg"))
    if res != true
        error("failed to load GAP package toolsforhomalg")
    end
end
end # module
