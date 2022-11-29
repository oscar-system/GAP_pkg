# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_mapclass

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"mapclass"
    @debug "GAP package 'mapclass' path = " * path
    GAP.Globals.SetPackagePath(GapObj("mapclass"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("mapclass"))
    if res != true
        error("failed to load GAP package mapclass")
    end
end
end # module
