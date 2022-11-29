# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_json

using Pkg.Artifacts
using GAP

include("jll.jl")

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"json"
    @debug "GAP package 'json' path = " * path
    GAP.Globals.SetPackagePath(GapObj("json"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("json"))
    if res != true
        error("failed to load GAP package json")
    end
end
end # module
