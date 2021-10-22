# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_factint

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"factint"
    @debug "GAP package 'factint' path = " * path
    GAP.Globals.SetPackagePath(GapObj("factint"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("factint"))
    if res != true
        error("failed to load GAP package factint")
    end
end

end # module
