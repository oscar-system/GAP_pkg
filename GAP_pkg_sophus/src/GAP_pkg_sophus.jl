# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_sophus

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"sophus"
    @debug "GAP package 'sophus' path = " * path
    GAP.Globals.SetPackagePath(GapObj("sophus"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("sophus"))
    if res != true
        error("failed to load GAP package sophus")
    end
end
end # module
