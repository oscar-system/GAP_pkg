# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_genss

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"genss"
    @debug "GAP package 'genss' path = " * path
    GAP.Globals.SetPackagePath(GapObj("genss"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("genss"))
    if res != true
        error("failed to load GAP package genss")
    end
end
end # module
