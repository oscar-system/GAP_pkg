# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_monoidalcategories

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"monoidalcategories"
    @debug "GAP package 'monoidalcategories' path = " * path
    GAP.Globals.SetPackagePath(GapObj("monoidalcategories"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("monoidalcategories"))
    if res != true
        error("failed to load GAP package monoidalcategories")
    end
end
end # module
