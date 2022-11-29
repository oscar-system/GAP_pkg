# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_nock

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"nock"
    @debug "GAP package 'nock' path = " * path
    GAP.Globals.SetPackagePath(GapObj("nock"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("nock"))
    if res != true
        error("failed to load GAP package nock")
    end
end
end # module
