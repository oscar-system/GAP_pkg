# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_quagroup

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"quagroup"
    @debug "GAP package 'quagroup' path = " * path
    GAP.Globals.SetPackagePath(GapObj("quagroup"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("quagroup"))
    if res != true
        error("failed to load GAP package quagroup")
    end
end
end # module
