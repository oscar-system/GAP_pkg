# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_agt

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"agt"
    @debug "GAP package 'agt' path = " * path
    GAP.Globals.SetPackagePath(GapObj("agt"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("agt"))
    if res != true
        error("failed to load GAP package agt")
    end
end
end # module
