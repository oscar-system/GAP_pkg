# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_fwtree

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"fwtree"
    @debug "GAP package 'fwtree' path = " * path
    GAP.Globals.SetPackagePath(GapObj("fwtree"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("fwtree"))
    if res != true
        error("failed to load GAP package fwtree")
    end
end
end # module
