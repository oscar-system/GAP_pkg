# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_spinsym

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"spinsym"
    @debug "GAP package 'spinsym' path = " * path
    GAP.Globals.SetPackagePath(GapObj("spinsym"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("spinsym"))
    if res != true
        error("failed to load GAP package spinsym")
    end
end
end # module
