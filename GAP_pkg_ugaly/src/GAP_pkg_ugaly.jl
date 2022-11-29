# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_ugaly

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"ugaly"
    @debug "GAP package 'ugaly' path = " * path
    GAP.Globals.SetPackagePath(GapObj("ugaly"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("ugaly"))
    if res != true
        error("failed to load GAP package ugaly")
    end
end
end # module
