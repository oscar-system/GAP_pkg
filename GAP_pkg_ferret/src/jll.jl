module JLL

using GAP
using GAP_pkg_ferret_jll

function __init__()
    # ensure GAP finds kernel extensions or other binaries
    sopath = joinpath(GAP_pkg_ferret_jll.find_artifact_dir(), "lib", "gap")
    @debug "GAP package 'ferret' sopath = " * sopath
    setproperty!(GAP.Globals.DirectoriesPackageProgramsOverrides, :ferret, GapObj(sopath))
end

end # module
