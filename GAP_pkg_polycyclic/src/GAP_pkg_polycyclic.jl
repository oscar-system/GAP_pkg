# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_polycyclic

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"polycyclic"
    @debug "GAP package 'polycyclic' path = " * path
    GAP.Globals.SetPackagePath(GapObj("polycyclic"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("polycyclic"))
    if res != true
        error("failed to load GAP package polycyclic")
    end
end
end # module
