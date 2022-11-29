# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_4ti2interface

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"4ti2interface"
    @debug "GAP package '4ti2interface' path = " * path
    GAP.Globals.SetPackagePath(GapObj("4ti2interface"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("4ti2interface"))
    if res != true
        error("failed to load GAP package 4ti2interface")
    end
end
end # module
