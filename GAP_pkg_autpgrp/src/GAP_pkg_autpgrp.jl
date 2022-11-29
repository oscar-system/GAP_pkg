# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_autpgrp

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"autpgrp"
    @debug "GAP package 'autpgrp' path = " * path
    GAP.Globals.SetPackagePath(GapObj("autpgrp"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("autpgrp"))
    if res != true
        error("failed to load GAP package autpgrp")
    end
end
end # module
