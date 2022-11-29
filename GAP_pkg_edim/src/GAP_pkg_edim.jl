# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_edim

using Pkg.Artifacts
using GAP

include("jll.jl")

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"edim"
    @debug "GAP package 'edim' path = " * path
    GAP.Globals.SetPackagePath(GapObj("edim"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("edim"))
    if res != true
        error("failed to load GAP package edim")
    end
end
end # module
