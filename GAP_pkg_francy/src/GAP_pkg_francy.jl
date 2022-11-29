# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_francy

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"francy"
    @debug "GAP package 'francy' path = " * path
    GAP.Globals.SetPackagePath(GapObj("francy"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("francy"))
    if res != true
        error("failed to load GAP package francy")
    end
end
end # module
