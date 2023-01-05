# ATTENTION: This file was generated, do not edit by hand.
"""
    GAP_pkg_cap

A wrapper for the GAP package CAP 2022.12-11.
"""
module GAP_pkg_cap

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"cap"
    @debug "GAP package 'cap' path = " * path
    GAP.Globals.SetPackagePath(GapObj("cap"), GapObj(path))
end

"""
    load(; banner::Bool=true, only_needed::Bool=true)

Load the GAP package CAP into GAP. Use `banner` to control
whether package banners are shown. Use `only_needed` to control
whether GAP should try to load all dependencies of the package
(including optional ones, if there are any), or only the needed ones.

Note that this Julia wrapper only declares dependencies on Julia
wrappers for the *needed* GAP dependencies, but not for any optional
ones. Thus `only_needed=false` may not actually load all optional
dependencies.
"""
function load(; banner::Bool=true, only_needed::Bool=true)
    res = GAP.Globals.LoadPackage(GapObj("cap"), banner; OnlyNeeded=only_needed)
    if res != true
        error("failed to load GAP package cap")
    end
end
end # module
