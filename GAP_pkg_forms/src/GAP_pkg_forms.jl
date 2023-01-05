# ATTENTION: This file was generated, do not edit by hand.
"""
    GAP_pkg_forms

A wrapper for the GAP package Forms 1.2.9.
"""
module GAP_pkg_forms

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"forms"
    @debug "GAP package 'forms' path = " * path
    GAP.Globals.SetPackagePath(GapObj("forms"), GapObj(path))
end

"""
    load(; banner::Bool=true, only_needed::Bool=true)

Load the GAP package Forms into GAP. Use `banner` to control
whether package banners are shown. Use `only_needed` to control
whether GAP should try to load all dependencies of the package
(including optional ones, if there are any), or only the needed ones.

Note that this Julia wrapper only declares dependencies on Julia
wrappers for the *needed* GAP dependencies, but not for any optional
ones. Thus `only_needed=false` may not actually load all optional
dependencies.
"""
function load(; banner::Bool=true, only_needed::Bool=true)
    res = GAP.Globals.LoadPackage(GapObj("forms"), banner; OnlyNeeded=only_needed)
    if res != true
        error("failed to load GAP package forms")
    end
end
end # module
