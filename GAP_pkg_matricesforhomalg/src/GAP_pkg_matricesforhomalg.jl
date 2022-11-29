# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_matricesforhomalg

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"matricesforhomalg"
    @debug "GAP package 'matricesforhomalg' path = " * path
    GAP.Globals.SetPackagePath(GapObj("matricesforhomalg"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("matricesforhomalg"))
    if res != true
        error("failed to load GAP package matricesforhomalg")
    end
end
end # module
