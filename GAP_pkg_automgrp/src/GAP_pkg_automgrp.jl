# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_automgrp

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"automgrp"
    @debug "GAP package 'automgrp' path = " * path
    GAP.Globals.SetPackagePath(GapObj("automgrp"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("automgrp"))
    if res != true
        error("failed to load GAP package automgrp")
    end
end
end # module
