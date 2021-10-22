module JLL

using GAP
using GAP_pkg_datastructures_jll

function __init__()
    # ensure GAP finds kernel extensions or other binaries
    sopath = joinpath(GAP_pkg_datastructures_jll.find_artifact_dir(), "lib", "gap")
    @debug "GAP package 'datastructures' sopath = " * sopath
    setproperty!(GAP.Globals.DirectoriesPackageProgramsOverrides, :datastructures, GapObj(sopath))
end

end # module
