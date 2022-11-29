# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_congruence

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"congruence"
    @debug "GAP package 'congruence' path = " * path
    GAP.Globals.SetPackagePath(GapObj("congruence"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("congruence"))
    if res != true
        error("failed to load GAP package congruence")
    end
end
end # module
