# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_fr

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"fr"
    @debug "GAP package 'fr' path = " * path
    GAP.Globals.SetPackagePath(GapObj("fr"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("fr"))
    if res != true
        error("failed to load GAP package fr")
    end
end
end # module
