# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_repsn

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"repsn"
    @debug "GAP package 'repsn' path = " * path
    GAP.Globals.SetPackagePath(GapObj("repsn"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("repsn"))
    if res != true
        error("failed to load GAP package repsn")
    end
end
end # module
