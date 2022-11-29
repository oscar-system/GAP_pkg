# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_homalgtocas

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"homalgtocas"
    @debug "GAP package 'homalgtocas' path = " * path
    GAP.Globals.SetPackagePath(GapObj("homalgtocas"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("homalgtocas"))
    if res != true
        error("failed to load GAP package homalgtocas")
    end
end
end # module
