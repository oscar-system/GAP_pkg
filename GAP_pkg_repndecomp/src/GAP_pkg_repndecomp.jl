# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_repndecomp

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"repndecomp"
    @debug "GAP package 'repndecomp' path = " * path
    GAP.Globals.SetPackagePath(GapObj("repndecomp"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("repndecomp"))
    if res != true
        error("failed to load GAP package repndecomp")
    end
end
end # module
