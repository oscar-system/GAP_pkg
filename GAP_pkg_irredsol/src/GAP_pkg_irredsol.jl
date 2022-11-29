# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_irredsol

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"irredsol"
    @debug "GAP package 'irredsol' path = " * path
    GAP.Globals.SetPackagePath(GapObj("irredsol"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("irredsol"))
    if res != true
        error("failed to load GAP package irredsol")
    end
end
end # module
