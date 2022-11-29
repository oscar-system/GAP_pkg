# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_semigroups

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"semigroups"
    @debug "GAP package 'semigroups' path = " * path
    GAP.Globals.SetPackagePath(GapObj("semigroups"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("semigroups"))
    if res != true
        error("failed to load GAP package semigroups")
    end
end
end # module
