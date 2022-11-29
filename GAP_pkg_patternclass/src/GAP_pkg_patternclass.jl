# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_patternclass

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"patternclass"
    @debug "GAP package 'patternclass' path = " * path
    GAP.Globals.SetPackagePath(GapObj("patternclass"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("patternclass"))
    if res != true
        error("failed to load GAP package patternclass")
    end
end
end # module
