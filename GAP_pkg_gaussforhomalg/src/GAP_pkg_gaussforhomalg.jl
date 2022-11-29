# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_gaussforhomalg

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"gaussforhomalg"
    @debug "GAP package 'gaussforhomalg' path = " * path
    GAP.Globals.SetPackagePath(GapObj("gaussforhomalg"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("gaussforhomalg"))
    if res != true
        error("failed to load GAP package gaussforhomalg")
    end
end
end # module
