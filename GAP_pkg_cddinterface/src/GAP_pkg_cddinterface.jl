# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_cddinterface

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"cddinterface"
    @debug "GAP package 'cddinterface' path = " * path
    GAP.Globals.SetPackagePath(GapObj("cddinterface"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("cddinterface"))
    if res != true
        error("failed to load GAP package cddinterface")
    end
end
end # module
