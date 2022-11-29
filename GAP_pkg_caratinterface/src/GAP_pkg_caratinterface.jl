# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_caratinterface

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"caratinterface"
    @debug "GAP package 'caratinterface' path = " * path
    GAP.Globals.SetPackagePath(GapObj("caratinterface"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("caratinterface"))
    if res != true
        error("failed to load GAP package caratinterface")
    end
end
end # module
