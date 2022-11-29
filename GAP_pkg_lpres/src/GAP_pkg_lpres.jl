# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_lpres

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"lpres"
    @debug "GAP package 'lpres' path = " * path
    GAP.Globals.SetPackagePath(GapObj("lpres"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("lpres"))
    if res != true
        error("failed to load GAP package lpres")
    end
end
end # module
