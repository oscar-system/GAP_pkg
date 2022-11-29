# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_crime

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"crime"
    @debug "GAP package 'crime' path = " * path
    GAP.Globals.SetPackagePath(GapObj("crime"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("crime"))
    if res != true
        error("failed to load GAP package crime")
    end
end
end # module
