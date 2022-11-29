# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_corelg

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"corelg"
    @debug "GAP package 'corelg' path = " * path
    GAP.Globals.SetPackagePath(GapObj("corelg"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("corelg"))
    if res != true
        error("failed to load GAP package corelg")
    end
end
end # module
