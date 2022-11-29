# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_grpconst

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"grpconst"
    @debug "GAP package 'grpconst' path = " * path
    GAP.Globals.SetPackagePath(GapObj("grpconst"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("grpconst"))
    if res != true
        error("failed to load GAP package grpconst")
    end
end
end # module
