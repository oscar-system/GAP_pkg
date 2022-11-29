# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_curlinterface

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"curlinterface"
    @debug "GAP package 'curlinterface' path = " * path
    GAP.Globals.SetPackagePath(GapObj("curlinterface"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("curlinterface"))
    if res != true
        error("failed to load GAP package curlinterface")
    end
end
end # module
