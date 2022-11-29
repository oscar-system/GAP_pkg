# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_recog

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"recog"
    @debug "GAP package 'recog' path = " * path
    GAP.Globals.SetPackagePath(GapObj("recog"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("recog"))
    if res != true
        error("failed to load GAP package recog")
    end
end
end # module
