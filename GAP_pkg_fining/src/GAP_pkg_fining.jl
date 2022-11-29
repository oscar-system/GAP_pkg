# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_fining

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"fining"
    @debug "GAP package 'fining' path = " * path
    GAP.Globals.SetPackagePath(GapObj("fining"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("fining"))
    if res != true
        error("failed to load GAP package fining")
    end
end
end # module
