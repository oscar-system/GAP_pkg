# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_linearalgebraforcap

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"linearalgebraforcap"
    @debug "GAP package 'linearalgebraforcap' path = " * path
    GAP.Globals.SetPackagePath(GapObj("linearalgebraforcap"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("linearalgebraforcap"))
    if res != true
        error("failed to load GAP package linearalgebraforcap")
    end
end
end # module