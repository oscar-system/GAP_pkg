module JLL

using GAP
using GAP_pkg_normalizinterface_jll

function __init__()
    # ensure GAP finds kernel extensions or other binaries
    sopath = joinpath(GAP_pkg_normalizinterface_jll.find_artifact_dir(), "lib", "gap")
    @debug "GAP package 'normalizinterface' sopath = " * sopath
    setproperty!(GAP.Globals.DirectoriesPackageProgramsOverrides, :normalizinterface, GapObj(sopath))
end

end # module
