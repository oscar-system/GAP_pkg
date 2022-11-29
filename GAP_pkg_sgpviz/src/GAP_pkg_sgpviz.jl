# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_sgpviz

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"sgpviz"
    @debug "GAP package 'sgpviz' path = " * path
    GAP.Globals.SetPackagePath(GapObj("sgpviz"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("sgpviz"))
    if res != true
        error("failed to load GAP package sgpviz")
    end
end
end # module
