# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_grape

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"grape"
    @debug "GAP package 'grape' path = " * path
    GAP.Globals.SetPackagePath(GapObj("grape"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("grape"))
    if res != true
        error("failed to load GAP package grape")
    end
end
end # module
