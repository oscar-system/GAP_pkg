module JLL

using GAP
using GAP_pkg_digraphs_jll

function __init__()
    # ensure GAP finds kernel extensions or other binaries
    sopath = joinpath(GAP_pkg_digraphs_jll.find_artifact_dir(), "lib", "gap")
    @debug "GAP package 'digraphs' sopath = " * sopath
    setproperty!(GAP.Globals.DirectoriesPackageProgramsOverrides, :digraphs, GapObj(sopath))
end

end # module
