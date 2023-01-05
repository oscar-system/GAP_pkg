# ATTENTION: This file was generated, do not edit by hand.
"""
    GAP_pkg_circle

A wrapper for the GAP package Circle 1.6.5.
"""
module GAP_pkg_circle

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"circle"
    @debug "GAP package 'circle' path = " * path
    GAP.Globals.SetPackagePath(GapObj("circle"), GapObj(path))
end

"""
    load(; banner::Bool=true, only_needed::Bool=true)

Load the GAP package Circle into GAP. Use `banner` to control
whether package banners are shown. Use `only_needed` to control
whether GAP should try to load all dependencies of the package
(including optional ones, if there are any), or only the needed ones.

Note that this Julia wrapper only declares dependencies on Julia
wrappers for the *needed* GAP dependencies, but not for any optional
ones. Thus `only_needed=false` may not actually load all optional
dependencies.
"""
function load(; banner::Bool=true, only_needed::Bool=true)
    res = GAP.Globals.LoadPackage(GapObj("circle"), banner; OnlyNeeded=only_needed)
    if res != true
        error("failed to load GAP package circle")
    end
end
end # module
