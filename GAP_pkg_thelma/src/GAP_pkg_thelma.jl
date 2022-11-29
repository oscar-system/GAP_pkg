# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_thelma

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"thelma"
    @debug "GAP package 'thelma' path = " * path
    GAP.Globals.SetPackagePath(GapObj("thelma"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("thelma"))
    if res != true
        error("failed to load GAP package thelma")
    end
end
end # module
