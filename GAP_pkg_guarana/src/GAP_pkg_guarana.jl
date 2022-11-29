# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_guarana

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"guarana"
    @debug "GAP package 'guarana' path = " * path
    GAP.Globals.SetPackagePath(GapObj("guarana"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("guarana"))
    if res != true
        error("failed to load GAP package guarana")
    end
end
end # module
