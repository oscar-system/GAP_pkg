# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_majoranaalgebras

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"majoranaalgebras"
    @debug "GAP package 'majoranaalgebras' path = " * path
    GAP.Globals.SetPackagePath(GapObj("majoranaalgebras"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("majoranaalgebras"))
    if res != true
        error("failed to load GAP package majoranaalgebras")
    end
end
end # module
