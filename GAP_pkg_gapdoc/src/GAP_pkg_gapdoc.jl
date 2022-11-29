# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_gapdoc

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"gapdoc"
    @debug "GAP package 'gapdoc' path = " * path
    GAP.Globals.SetPackagePath(GapObj("gapdoc"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("gapdoc"))
    if res != true
        error("failed to load GAP package gapdoc")
    end
end
end # module
