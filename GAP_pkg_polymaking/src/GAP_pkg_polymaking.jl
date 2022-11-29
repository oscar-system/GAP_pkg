# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_polymaking

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"polymaking"
    @debug "GAP package 'polymaking' path = " * path
    GAP.Globals.SetPackagePath(GapObj("polymaking"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("polymaking"))
    if res != true
        error("failed to load GAP package polymaking")
    end
end
end # module
