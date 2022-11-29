# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_itc

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"itc"
    @debug "GAP package 'itc' path = " * path
    GAP.Globals.SetPackagePath(GapObj("itc"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("itc"))
    if res != true
        error("failed to load GAP package itc")
    end
end
end # module
