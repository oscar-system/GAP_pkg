# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_singular

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"singular"
    @debug "GAP package 'singular' path = " * path
    GAP.Globals.SetPackagePath(GapObj("singular"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("singular"))
    if res != true
        error("failed to load GAP package singular")
    end
end
end # module
