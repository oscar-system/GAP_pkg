# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_numericalsgps

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"numericalsgps"
    @debug "GAP package 'numericalsgps' path = " * path
    GAP.Globals.SetPackagePath(GapObj("numericalsgps"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("numericalsgps"))
    if res != true
        error("failed to load GAP package numericalsgps")
    end
end
end # module
