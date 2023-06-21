# ATTENTION: This file was generated, do not edit by hand.
"""
    GAP_pkg_polycyclic

A wrapper for the GAP package Polycyclic 2.16.
"""
module GAP_pkg_polycyclic

# disable optimizer and method inference if possible, they just cost
# us here without any benefit (copied from JLLWrappers.jl)
if isdefined(Base, :Experimental) && isdefined(Base.Experimental, Symbol("@compiler_options"))
    @eval Base.Experimental.@compiler_options compile=min optimize=0 infer=false
end

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"polycyclic"
    @debug "GAP package 'polycyclic' path = " * path
    GAP.Globals.SetPackagePath(GapObj("polycyclic"), GapObj(path))
end

"""
    load(; banner::Bool=true, only_needed::Bool=true)

Load the GAP package Polycyclic into GAP. Use `banner` to control
whether package banners are shown. Use `only_needed` to control
whether GAP should try to load all dependencies of the package
(including optional ones, if there are any), or only the needed ones.

Note that this Julia wrapper only declares dependencies on Julia
wrappers for the *needed* GAP dependencies, but not for any optional
ones. Thus `only_needed=false` may not actually load all optional
dependencies.
"""
function load(; banner::Bool=true, only_needed::Bool=true)
    res = GAP.Globals.LoadPackage(GapObj("polycyclic"), banner; OnlyNeeded=only_needed)
    if res != true
        error("failed to load GAP package polycyclic")
    end
end
end # module
