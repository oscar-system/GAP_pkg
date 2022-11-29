# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_laguna

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"laguna"
    @debug "GAP package 'laguna' path = " * path
    GAP.Globals.SetPackagePath(GapObj("laguna"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("laguna"))
    if res != true
        error("failed to load GAP package laguna")
    end
end
end # module
