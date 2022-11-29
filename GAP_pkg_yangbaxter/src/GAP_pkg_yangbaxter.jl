# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_yangbaxter

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"yangbaxter"
    @debug "GAP package 'yangbaxter' path = " * path
    GAP.Globals.SetPackagePath(GapObj("yangbaxter"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("yangbaxter"))
    if res != true
        error("failed to load GAP package yangbaxter")
    end
end
end # module
