# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_alnuth

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"alnuth"
    @debug "GAP package 'alnuth' path = " * path
    GAP.Globals.SetPackagePath(GapObj("alnuth"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("alnuth"))
    if res != true
        error("failed to load GAP package alnuth")
    end
end
end # module
