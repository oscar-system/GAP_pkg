# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_difsets

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"difsets"
    @debug "GAP package 'difsets' path = " * path
    GAP.Globals.SetPackagePath(GapObj("difsets"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("difsets"))
    if res != true
        error("failed to load GAP package difsets")
    end
end
end # module
