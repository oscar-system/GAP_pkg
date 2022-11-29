# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_crypting

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"crypting"
    @debug "GAP package 'crypting' path = " * path
    GAP.Globals.SetPackagePath(GapObj("crypting"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("crypting"))
    if res != true
        error("failed to load GAP package crypting")
    end
end
end # module
