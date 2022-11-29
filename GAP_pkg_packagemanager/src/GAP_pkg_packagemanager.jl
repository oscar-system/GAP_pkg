# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_packagemanager

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"packagemanager"
    @debug "GAP package 'packagemanager' path = " * path
    GAP.Globals.SetPackagePath(GapObj("packagemanager"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("packagemanager"))
    if res != true
        error("failed to load GAP package packagemanager")
    end
end
end # module
