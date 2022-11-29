# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_autodoc

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"autodoc"
    @debug "GAP package 'autodoc' path = " * path
    GAP.Globals.SetPackagePath(GapObj("autodoc"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("autodoc"))
    if res != true
        error("failed to load GAP package autodoc")
    end
end
end # module
