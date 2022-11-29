# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_sonata

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"sonata"
    @debug "GAP package 'sonata' path = " * path
    GAP.Globals.SetPackagePath(GapObj("sonata"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("sonata"))
    if res != true
        error("failed to load GAP package sonata")
    end
end
end # module
