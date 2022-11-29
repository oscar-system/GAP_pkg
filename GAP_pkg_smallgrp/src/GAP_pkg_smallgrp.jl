# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_smallgrp

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"smallgrp"
    @debug "GAP package 'smallgrp' path = " * path
    GAP.Globals.SetPackagePath(GapObj("smallgrp"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("smallgrp"))
    if res != true
        error("failed to load GAP package smallgrp")
    end
end
end # module
