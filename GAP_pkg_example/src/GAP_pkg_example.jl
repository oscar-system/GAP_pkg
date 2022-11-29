# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_example

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"example"
    @debug "GAP package 'example' path = " * path
    GAP.Globals.SetPackagePath(GapObj("example"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("example"))
    if res != true
        error("failed to load GAP package example")
    end
end
end # module
