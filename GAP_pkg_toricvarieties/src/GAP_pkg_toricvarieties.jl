# ATTENTION: This file was generated, do not edit by hand.
"""
    GAP_pkg_toricvarieties

A wrapper for the GAP package ToricVarieties 2022.07.13.
"""
module GAP_pkg_toricvarieties

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"toricvarieties"
    @debug "GAP package 'toricvarieties' path = " * path
    GAP.Globals.SetPackagePath(GapObj("toricvarieties"), GapObj(path))
end

"""
    load(; banner::Bool=true, only_needed::Bool=true)

Load the GAP package ToricVarieties into GAP. Use `banner` to control
whether package banners are shown. Use `only_needed` to control
whether GAP should try to load all dependencies of the package
(including optional ones, if there are any), or only the needed ones.

Note that this Julia wrapper only declares dependencies on Julia
wrappers for the *needed* GAP dependencies, but not for any optional
ones. Thus `only_needed=false` may not actually load all optional
dependencies.
"""
function load(; banner::Bool=true, only_needed::Bool=true)
    res = GAP.Globals.LoadPackage(GapObj("toricvarieties"), banner; OnlyNeeded=only_needed)
    if res != true
        error("failed to load GAP package toricvarieties")
    end
end
end # module
