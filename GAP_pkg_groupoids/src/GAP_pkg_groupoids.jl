# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_groupoids

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"groupoids"
    @debug "GAP package 'groupoids' path = " * path
    GAP.Globals.SetPackagePath(GapObj("groupoids"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("groupoids"))
    if res != true
        error("failed to load GAP package groupoids")
    end
end
end # module
