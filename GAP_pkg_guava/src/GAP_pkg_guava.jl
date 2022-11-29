# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_guava

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"guava"
    @debug "GAP package 'guava' path = " * path
    GAP.Globals.SetPackagePath(GapObj("guava"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("guava"))
    if res != true
        error("failed to load GAP package guava")
    end
end
end # module
