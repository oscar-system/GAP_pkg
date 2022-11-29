# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_kan

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"kan"
    @debug "GAP package 'kan' path = " * path
    GAP.Globals.SetPackagePath(GapObj("kan"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("kan"))
    if res != true
        error("failed to load GAP package kan")
    end
end
end # module
