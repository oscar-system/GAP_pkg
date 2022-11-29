# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_liealgdb

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"liealgdb"
    @debug "GAP package 'liealgdb' path = " * path
    GAP.Globals.SetPackagePath(GapObj("liealgdb"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("liealgdb"))
    if res != true
        error("failed to load GAP package liealgdb")
    end
end
end # module
