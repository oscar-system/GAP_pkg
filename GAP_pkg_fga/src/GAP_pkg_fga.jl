# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_fga

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"fga"
    @debug "GAP package 'fga' path = " * path
    GAP.Globals.SetPackagePath(GapObj("fga"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("fga"))
    if res != true
        error("failed to load GAP package fga")
    end
end
end # module
