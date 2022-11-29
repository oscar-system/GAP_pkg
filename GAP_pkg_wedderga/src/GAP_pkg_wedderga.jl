# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_wedderga

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"wedderga"
    @debug "GAP package 'wedderga' path = " * path
    GAP.Globals.SetPackagePath(GapObj("wedderga"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("wedderga"))
    if res != true
        error("failed to load GAP package wedderga")
    end
end
end # module
