# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_normalizinterface

using Pkg.Artifacts
using GAP

include("jll.jl")

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"normalizinterface"
    @debug "GAP package 'normalizinterface' path = " * path
    GAP.Globals.SetPackagePath(GapObj("normalizinterface"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("normalizinterface"))
    if res != true
        error("failed to load GAP package normalizinterface")
    end
end
end # module
