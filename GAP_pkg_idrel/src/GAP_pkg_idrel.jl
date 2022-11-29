# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_idrel

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"idrel"
    @debug "GAP package 'idrel' path = " * path
    GAP.Globals.SetPackagePath(GapObj("idrel"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("idrel"))
    if res != true
        error("failed to load GAP package idrel")
    end
end
end # module
