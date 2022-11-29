# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_jupyterviz

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"jupyterviz"
    @debug "GAP package 'jupyterviz' path = " * path
    GAP.Globals.SetPackagePath(GapObj("jupyterviz"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("jupyterviz"))
    if res != true
        error("failed to load GAP package jupyterviz")
    end
end
end # module
