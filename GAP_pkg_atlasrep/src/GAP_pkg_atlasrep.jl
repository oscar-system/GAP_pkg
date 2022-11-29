# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_atlasrep

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"atlasrep"
    @debug "GAP package 'atlasrep' path = " * path
    GAP.Globals.SetPackagePath(GapObj("atlasrep"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("atlasrep"))
    if res != true
        error("failed to load GAP package atlasrep")
    end
end
end # module
