# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_rcwa

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"rcwa"
    @debug "GAP package 'rcwa' path = " * path
    GAP.Globals.SetPackagePath(GapObj("rcwa"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("rcwa"))
    if res != true
        error("failed to load GAP package rcwa")
    end
end
end # module
