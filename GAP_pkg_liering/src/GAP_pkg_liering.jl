# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_liering

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"liering"
    @debug "GAP package 'liering' path = " * path
    GAP.Globals.SetPackagePath(GapObj("liering"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("liering"))
    if res != true
        error("failed to load GAP package liering")
    end
end
end # module
