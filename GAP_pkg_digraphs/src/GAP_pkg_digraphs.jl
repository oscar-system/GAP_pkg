# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_digraphs

using Pkg.Artifacts
using GAP

include("jll.jl")

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"digraphs"
    @debug "GAP package 'digraphs' path = " * path
    GAP.Globals.SetPackagePath(GapObj("digraphs"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("digraphs"))
    if res != true
        error("failed to load GAP package digraphs")
    end
end
end # module
