# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_polenta

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"polenta"
    @debug "GAP package 'polenta' path = " * path
    GAP.Globals.SetPackagePath(GapObj("polenta"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("polenta"))
    if res != true
        error("failed to load GAP package polenta")
    end
end
end # module
