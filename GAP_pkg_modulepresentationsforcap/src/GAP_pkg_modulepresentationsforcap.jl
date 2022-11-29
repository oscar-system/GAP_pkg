# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_modulepresentationsforcap

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"modulepresentationsforcap"
    @debug "GAP package 'modulepresentationsforcap' path = " * path
    GAP.Globals.SetPackagePath(GapObj("modulepresentationsforcap"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("modulepresentationsforcap"))
    if res != true
        error("failed to load GAP package modulepresentationsforcap")
    end
end
end # module
