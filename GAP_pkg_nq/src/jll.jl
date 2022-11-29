module JLL

using GAP
using GAP_pkg_nq_jll

function __init__()
    # ensure GAP finds kernel extensions or other binaries
    sopath = joinpath(GAP_pkg_nq_jll.find_artifact_dir(), "lib", "gap")
    @debug "GAP package 'nq' sopath = " * sopath
    setproperty!(GAP.Globals.DirectoriesPackageProgramsOverrides, :nq, GapObj(sopath))
end

end # module
