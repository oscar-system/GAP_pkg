# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_cryst

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"cryst"
    @debug "GAP package 'cryst' path = " * path
    GAP.Globals.SetPackagePath(GapObj("cryst"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("cryst"))
    if res != true
        error("failed to load GAP package cryst")
    end
end
end # module
