# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_nilmat

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"nilmat"
    @debug "GAP package 'nilmat' path = " * path
    GAP.Globals.SetPackagePath(GapObj("nilmat"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("nilmat"))
    if res != true
        error("failed to load GAP package nilmat")
    end
end
end # module
