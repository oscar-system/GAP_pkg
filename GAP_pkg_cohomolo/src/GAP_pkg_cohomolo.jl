# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_cohomolo

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"cohomolo"
    @debug "GAP package 'cohomolo' path = " * path
    GAP.Globals.SetPackagePath(GapObj("cohomolo"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("cohomolo"))
    if res != true
        error("failed to load GAP package cohomolo")
    end
end
end # module
