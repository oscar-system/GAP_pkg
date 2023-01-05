# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_sl2reps

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"sl2reps"
    @debug "GAP package 'sl2reps' path = " * path
    GAP.Globals.SetPackagePath(GapObj("sl2reps"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("sl2reps"))
    if res != true
        error("failed to load GAP package sl2reps")
    end
end
end # module
