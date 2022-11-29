# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_gradedmodules

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"gradedmodules"
    @debug "GAP package 'gradedmodules' path = " * path
    GAP.Globals.SetPackagePath(GapObj("gradedmodules"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("gradedmodules"))
    if res != true
        error("failed to load GAP package gradedmodules")
    end
end
end # module
