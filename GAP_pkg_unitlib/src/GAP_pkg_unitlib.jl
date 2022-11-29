# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_unitlib

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"unitlib"
    @debug "GAP package 'unitlib' path = " * path
    GAP.Globals.SetPackagePath(GapObj("unitlib"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("unitlib"))
    if res != true
        error("failed to load GAP package unitlib")
    end
end
end # module
