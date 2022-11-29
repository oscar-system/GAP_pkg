# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_radiroot

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"radiroot"
    @debug "GAP package 'radiroot' path = " * path
    GAP.Globals.SetPackagePath(GapObj("radiroot"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("radiroot"))
    if res != true
        error("failed to load GAP package radiroot")
    end
end
end # module
