# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_sco

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"sco"
    @debug "GAP package 'sco' path = " * path
    GAP.Globals.SetPackagePath(GapObj("sco"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("sco"))
    if res != true
        error("failed to load GAP package sco")
    end
end
end # module
