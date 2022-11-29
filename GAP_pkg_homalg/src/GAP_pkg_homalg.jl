# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_homalg

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"homalg"
    @debug "GAP package 'homalg' path = " * path
    GAP.Globals.SetPackagePath(GapObj("homalg"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("homalg"))
    if res != true
        error("failed to load GAP package homalg")
    end
end
end # module
