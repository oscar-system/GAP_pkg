# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_anupq

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"anupq"
    @debug "GAP package 'anupq' path = " * path
    GAP.Globals.SetPackagePath(GapObj("anupq"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("anupq"))
    if res != true
        error("failed to load GAP package anupq")
    end
end
end # module
