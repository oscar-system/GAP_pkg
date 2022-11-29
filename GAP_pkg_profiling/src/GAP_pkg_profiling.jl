# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_profiling

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"profiling"
    @debug "GAP package 'profiling' path = " * path
    GAP.Globals.SetPackagePath(GapObj("profiling"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("profiling"))
    if res != true
        error("failed to load GAP package profiling")
    end
end
end # module
