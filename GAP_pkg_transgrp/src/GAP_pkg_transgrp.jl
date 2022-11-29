# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_transgrp

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"transgrp"
    @debug "GAP package 'transgrp' path = " * path
    GAP.Globals.SetPackagePath(GapObj("transgrp"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("transgrp"))
    if res != true
        error("failed to load GAP package transgrp")
    end
end
end # module
