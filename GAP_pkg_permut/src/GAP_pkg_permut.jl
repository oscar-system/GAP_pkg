# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_permut

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"permut"
    @debug "GAP package 'permut' path = " * path
    GAP.Globals.SetPackagePath(GapObj("permut"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("permut"))
    if res != true
        error("failed to load GAP package permut")
    end
end
end # module
