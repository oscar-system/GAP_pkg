# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_toric

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"toric"
    @debug "GAP package 'toric' path = " * path
    GAP.Globals.SetPackagePath(GapObj("toric"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("toric"))
    if res != true
        error("failed to load GAP package toric")
    end
end
end # module
