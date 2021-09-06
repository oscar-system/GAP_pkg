module GAP_pkg_cvec

using GAP
using GAP_pkg_cvec_jll
using Pkg.Artifacts

const pkgname = "cvec"

function __init__()
    # ensure GAP will load the correct version of this package
    path = artifact"cvec"
    println("cvec path = $(path)")
    GAP.Globals.SetPackagePath(GapObj(pkgname), GapObj(path))

    sopath = joinpath(GAP_pkg_cvec_jll.find_artifact_dir(), "lib", "gap", "")
    println("cvec sopath = $(sopath)")

# TODO: somehow we must ensure that `@rpath/libstdc++.6.dylib` resolves to Julia's C++ lib

    # FIXME: the following requires GAP.jl 0.6.3    
    setproperty!(GAP.Globals.DirectoriesPackageProgramsOverrides, pkgname, GapObj(sopath))
end

function load()
    res = GAP.Globals.LoadPackage(GapObj(pkgname))
    if res != true
        error("failed to load GAP package $(pkgname)")
    end
end

end # module
