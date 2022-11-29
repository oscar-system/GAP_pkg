# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_automata

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"automata"
    @debug "GAP package 'automata' path = " * path
    GAP.Globals.SetPackagePath(GapObj("automata"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("automata"))
    if res != true
        error("failed to load GAP package automata")
    end
end
end # module
