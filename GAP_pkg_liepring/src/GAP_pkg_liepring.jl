# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_liepring

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"liepring"
    @debug "GAP package 'liepring' path = " * path
    GAP.Globals.SetPackagePath(GapObj("liepring"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("liepring"))
    if res != true
        error("failed to load GAP package liepring")
    end
end
end # module
