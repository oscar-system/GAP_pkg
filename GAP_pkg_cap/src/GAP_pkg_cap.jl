# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_cap

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"cap"
    @debug "GAP package 'cap' path = " * path
    GAP.Globals.SetPackagePath(GapObj("cap"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("cap"))
    if res != true
        error("failed to load GAP package cap")
    end
end
end # module
