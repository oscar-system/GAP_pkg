# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_design

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"design"
    @debug "GAP package 'design' path = " * path
    GAP.Globals.SetPackagePath(GapObj("design"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("design"))
    if res != true
        error("failed to load GAP package design")
    end
end
end # module
