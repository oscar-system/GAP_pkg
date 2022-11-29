# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_resclasses

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"resclasses"
    @debug "GAP package 'resclasses' path = " * path
    GAP.Globals.SetPackagePath(GapObj("resclasses"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("resclasses"))
    if res != true
        error("failed to load GAP package resclasses")
    end
end
end # module
