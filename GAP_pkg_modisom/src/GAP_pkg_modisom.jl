# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_modisom

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"modisom"
    @debug "GAP package 'modisom' path = " * path
    GAP.Globals.SetPackagePath(GapObj("modisom"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("modisom"))
    if res != true
        error("failed to load GAP package modisom")
    end
end
end # module
