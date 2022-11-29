# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_generalizedmorphismsforcap

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"generalizedmorphismsforcap"
    @debug "GAP package 'generalizedmorphismsforcap' path = " * path
    GAP.Globals.SetPackagePath(GapObj("generalizedmorphismsforcap"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("generalizedmorphismsforcap"))
    if res != true
        error("failed to load GAP package generalizedmorphismsforcap")
    end
end
end # module
