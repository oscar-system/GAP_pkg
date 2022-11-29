# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_rds

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"rds"
    @debug "GAP package 'rds' path = " * path
    GAP.Globals.SetPackagePath(GapObj("rds"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("rds"))
    if res != true
        error("failed to load GAP package rds")
    end
end
end # module
