module JLL

using GAP
using GAP_pkg_float_jll

function __init__()
    # ensure GAP finds kernel extensions or other binaries
    sopath = joinpath(GAP_pkg_float_jll.find_artifact_dir(), "lib", "gap")
    @debug "GAP package 'float' sopath = " * sopath
    setproperty!(GAP.Globals.DirectoriesPackageProgramsOverrides, :float, GapObj(sopath))
end

end # module
