# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_qpa

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"qpa"
    @debug "GAP package 'qpa' path = " * path
    GAP.Globals.SetPackagePath(GapObj("qpa"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("qpa"))
    if res != true
        error("failed to load GAP package qpa")
    end
end
end # module
