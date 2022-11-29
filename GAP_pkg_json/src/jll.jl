module JLL

using GAP
using GAP_pkg_json_jll

function __init__()
    # ensure GAP finds kernel extensions or other binaries
    sopath = joinpath(GAP_pkg_json_jll.find_artifact_dir(), "lib", "gap")
    @debug "GAP package 'json' sopath = " * sopath
    setproperty!(GAP.Globals.DirectoriesPackageProgramsOverrides, :json, GapObj(sopath))
end

end # module
