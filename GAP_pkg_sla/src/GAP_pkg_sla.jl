# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_sla

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"sla"
    @debug "GAP package 'sla' path = " * path
    GAP.Globals.SetPackagePath(GapObj("sla"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("sla"))
    if res != true
        error("failed to load GAP package sla")
    end
end
end # module
