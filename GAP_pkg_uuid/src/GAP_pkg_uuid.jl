# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_uuid

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"uuid"
    @debug "GAP package 'uuid' path = " * path
    GAP.Globals.SetPackagePath(GapObj("uuid"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("uuid"))
    if res != true
        error("failed to load GAP package uuid")
    end
end
end # module
