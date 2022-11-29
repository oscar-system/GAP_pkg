# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_toricvarieties

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"toricvarieties"
    @debug "GAP package 'toricvarieties' path = " * path
    GAP.Globals.SetPackagePath(GapObj("toricvarieties"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("toricvarieties"))
    if res != true
        error("failed to load GAP package toricvarieties")
    end
end
end # module
