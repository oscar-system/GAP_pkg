# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_deepthought

using Pkg.Artifacts
using GAP

include("jll.jl")

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"deepthought"
    @debug "GAP package 'deepthought' path = " * path
    GAP.Globals.SetPackagePath(GapObj("deepthought"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("deepthought"))
    if res != true
        error("failed to load GAP package deepthought")
    end
end
end # module
