# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_circle

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"circle"
    @debug "GAP package 'circle' path = " * path
    GAP.Globals.SetPackagePath(GapObj("circle"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("circle"))
    if res != true
        error("failed to load GAP package circle")
    end
end
end # module
