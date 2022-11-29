# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_zeromqinterface

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"zeromqinterface"
    @debug "GAP package 'zeromqinterface' path = " * path
    GAP.Globals.SetPackagePath(GapObj("zeromqinterface"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("zeromqinterface"))
    if res != true
        error("failed to load GAP package zeromqinterface")
    end
end
end # module
