# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_loops

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"loops"
    @debug "GAP package 'loops' path = " * path
    GAP.Globals.SetPackagePath(GapObj("loops"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("loops"))
    if res != true
        error("failed to load GAP package loops")
    end
end
end # module
