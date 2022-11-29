module JLL

using GAP
using GAP_pkg_edim_jll

function __init__()
    # ensure GAP finds kernel extensions or other binaries
    sopath = joinpath(GAP_pkg_edim_jll.find_artifact_dir(), "lib", "gap")
    @debug "GAP package 'edim' sopath = " * sopath
    setproperty!(GAP.Globals.DirectoriesPackageProgramsOverrides, :edim, GapObj(sopath))
end

end # module
