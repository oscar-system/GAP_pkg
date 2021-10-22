module JLL

using GAP
using GAP_pkg_cvec_jll

function __init__()
    # ensure GAP finds kernel extensions or other binaries
    sopath = joinpath(GAP_pkg_cvec_jll.find_artifact_dir(), "lib", "gap")
    @debug "GAP package 'cvec' sopath = " * sopath
    setproperty!(GAP.Globals.DirectoriesPackageProgramsOverrides, :cvec, GapObj(sopath))
end

end # module
