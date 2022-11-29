# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_crystcat

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"crystcat"
    @debug "GAP package 'crystcat' path = " * path
    GAP.Globals.SetPackagePath(GapObj("crystcat"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("crystcat"))
    if res != true
        error("failed to load GAP package crystcat")
    end
end
end # module
