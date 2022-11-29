# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_images

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"images"
    @debug "GAP package 'images' path = " * path
    GAP.Globals.SetPackagePath(GapObj("images"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("images"))
    if res != true
        error("failed to load GAP package images")
    end
end
end # module
