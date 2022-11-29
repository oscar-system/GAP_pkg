# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_modules

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"modules"
    @debug "GAP package 'modules' path = " * path
    GAP.Globals.SetPackagePath(GapObj("modules"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("modules"))
    if res != true
        error("failed to load GAP package modules")
    end
end
end # module
