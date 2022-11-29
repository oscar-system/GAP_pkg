# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_matgrp

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"matgrp"
    @debug "GAP package 'matgrp' path = " * path
    GAP.Globals.SetPackagePath(GapObj("matgrp"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("matgrp"))
    if res != true
        error("failed to load GAP package matgrp")
    end
end
end # module
