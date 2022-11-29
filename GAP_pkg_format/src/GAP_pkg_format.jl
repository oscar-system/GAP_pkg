# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_format

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"format"
    @debug "GAP package 'format' path = " * path
    GAP.Globals.SetPackagePath(GapObj("format"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("format"))
    if res != true
        error("failed to load GAP package format")
    end
end
end # module
