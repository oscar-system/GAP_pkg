# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_openmath

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"openmath"
    @debug "GAP package 'openmath' path = " * path
    GAP.Globals.SetPackagePath(GapObj("openmath"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("openmath"))
    if res != true
        error("failed to load GAP package openmath")
    end
end
end # module
