# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_ctbllib

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"ctbllib"
    @debug "GAP package 'ctbllib' path = " * path
    GAP.Globals.SetPackagePath(GapObj("ctbllib"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("ctbllib"))
    if res != true
        error("failed to load GAP package ctbllib")
    end
end
end # module
