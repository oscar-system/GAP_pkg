# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_gauss

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"gauss"
    @debug "GAP package 'gauss' path = " * path
    GAP.Globals.SetPackagePath(GapObj("gauss"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("gauss"))
    if res != true
        error("failed to load GAP package gauss")
    end
end
end # module
