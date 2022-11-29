# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_standardff

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"standardff"
    @debug "GAP package 'standardff' path = " * path
    GAP.Globals.SetPackagePath(GapObj("standardff"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("standardff"))
    if res != true
        error("failed to load GAP package standardff")
    end
end
end # module
