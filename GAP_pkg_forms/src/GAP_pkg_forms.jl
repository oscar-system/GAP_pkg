# ATTENTION: This file was generated, do not edit by hand.
module GAP_pkg_forms

using Pkg.Artifacts
using GAP

function __init__()
    # ensure GAP will load the correct instance of this package
    path = artifact"forms"
    @debug "GAP package 'forms' path = " * path
    GAP.Globals.SetPackagePath(GapObj("forms"), GapObj(path))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj("forms"))
    if res != true
        error("failed to load GAP package forms")
    end
end
end # module
