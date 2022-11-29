# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_symbcompcc

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"symbcompcc"
    @debug "GAP package 'symbcompcc' path = " * path
    GAP.Globals.SetPackagePath(GapObj("symbcompcc"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("symbcompcc"))
    if res != true
        error("failed to load GAP package symbcompcc")
    end
end
end # module
