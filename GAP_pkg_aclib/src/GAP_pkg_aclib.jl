# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_aclib

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"aclib"
    @debug "GAP package 'aclib' path = " * path
    GAP.Globals.SetPackagePath(GapObj("aclib"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("aclib"))
    if res != true
        error("failed to load GAP package aclib")
    end
end
end # module
