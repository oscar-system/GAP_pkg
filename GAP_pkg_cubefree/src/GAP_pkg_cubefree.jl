# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_cubefree

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"cubefree"
    @debug "GAP package 'cubefree' path = " * path
    GAP.Globals.SetPackagePath(GapObj("cubefree"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("cubefree"))
    if res != true
        error("failed to load GAP package cubefree")
    end
end
end # module
