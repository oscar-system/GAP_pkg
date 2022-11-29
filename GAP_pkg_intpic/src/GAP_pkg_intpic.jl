# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_intpic

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"intpic"
    @debug "GAP package 'intpic' path = " * path
    GAP.Globals.SetPackagePath(GapObj("intpic"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("intpic"))
    if res != true
        error("failed to load GAP package intpic")
    end
end
end # module
