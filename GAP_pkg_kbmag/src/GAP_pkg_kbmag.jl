# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_kbmag

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"kbmag"
    @debug "GAP package 'kbmag' path = " * path
    GAP.Globals.SetPackagePath(GapObj("kbmag"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("kbmag"))
    if res != true
        error("failed to load GAP package kbmag")
    end
end
end # module
