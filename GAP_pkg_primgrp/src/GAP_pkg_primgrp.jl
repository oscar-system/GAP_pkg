# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_primgrp

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"primgrp"
    @debug "GAP package 'primgrp' path = " * path
    GAP.Globals.SetPackagePath(GapObj("primgrp"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("primgrp"))
    if res != true
        error("failed to load GAP package primgrp")
    end
end
end # module
