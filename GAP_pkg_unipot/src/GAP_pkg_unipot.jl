# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_unipot

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"unipot"
    @debug "GAP package 'unipot' path = " * path
    GAP.Globals.SetPackagePath(GapObj("unipot"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("unipot"))
    if res != true
        error("failed to load GAP package unipot")
    end
end

end # module
