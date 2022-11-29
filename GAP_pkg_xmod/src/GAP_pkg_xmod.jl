# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_xmod

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"xmod"
    @debug "GAP package 'xmod' path = " * path
    GAP.Globals.SetPackagePath(GapObj("xmod"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("xmod"))
    if res != true
        error("failed to load GAP package xmod")
    end
end
end # module
