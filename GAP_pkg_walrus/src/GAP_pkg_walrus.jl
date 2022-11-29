# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_walrus

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"walrus"
    @debug "GAP package 'walrus' path = " * path
    GAP.Globals.SetPackagePath(GapObj("walrus"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("walrus"))
    if res != true
        error("failed to load GAP package walrus")
    end
end
end # module
