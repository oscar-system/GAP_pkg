# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_classicpres

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"classicpres"
    @debug "GAP package 'classicpres' path = " * path
    GAP.Globals.SetPackagePath(GapObj("classicpres"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("classicpres"))
    if res != true
        error("failed to load GAP package classicpres")
    end
end
end # module
