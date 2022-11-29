# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_tomlib

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"tomlib"
    @debug "GAP package 'tomlib' path = " * path
    GAP.Globals.SetPackagePath(GapObj("tomlib"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("tomlib"))
    if res != true
        error("failed to load GAP package tomlib")
    end
end
end # module
