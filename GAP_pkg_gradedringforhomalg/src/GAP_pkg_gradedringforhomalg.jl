# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_gradedringforhomalg

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"gradedringforhomalg"
    @debug "GAP package 'gradedringforhomalg' path = " * path
    GAP.Globals.SetPackagePath(GapObj("gradedringforhomalg"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("gradedringforhomalg"))
    if res != true
        error("failed to load GAP package gradedringforhomalg")
    end
end
end # module
