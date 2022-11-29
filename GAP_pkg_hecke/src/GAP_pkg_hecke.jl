# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_hecke

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"hecke"
    @debug "GAP package 'hecke' path = " * path
    GAP.Globals.SetPackagePath(GapObj("hecke"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("hecke"))
    if res != true
        error("failed to load GAP package hecke")
    end
end
end # module
