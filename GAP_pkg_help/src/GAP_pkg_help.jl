# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_help

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"help"
    @debug "GAP package 'help' path = " * path
    GAP.Globals.SetPackagePath(GapObj("help"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("help"))
    if res != true
        error("failed to load GAP package help")
    end
end
end # module
