# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_examplesforhomalg

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"examplesforhomalg"
    @debug "GAP package 'examplesforhomalg' path = " * path
    GAP.Globals.SetPackagePath(GapObj("examplesforhomalg"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("examplesforhomalg"))
    if res != true
        error("failed to load GAP package examplesforhomalg")
    end
end
end # module
