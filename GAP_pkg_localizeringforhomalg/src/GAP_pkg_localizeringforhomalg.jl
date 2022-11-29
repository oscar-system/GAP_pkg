# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_localizeringforhomalg

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"localizeringforhomalg"
    @debug "GAP package 'localizeringforhomalg' path = " * path
    GAP.Globals.SetPackagePath(GapObj("localizeringforhomalg"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("localizeringforhomalg"))
    if res != true
        error("failed to load GAP package localizeringforhomalg")
    end
end
end # module
