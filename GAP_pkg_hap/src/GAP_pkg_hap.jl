# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_hap

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"hap"
    @debug "GAP package 'hap' path = " * path
    GAP.Globals.SetPackagePath(GapObj("hap"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("hap"))
    if res != true
        error("failed to load GAP package hap")
    end
end
end # module
