# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_sglppow

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"sglppow"
    @debug "GAP package 'sglppow' path = " * path
    GAP.Globals.SetPackagePath(GapObj("sglppow"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("sglppow"))
    if res != true
        error("failed to load GAP package sglppow")
    end
end
end # module
