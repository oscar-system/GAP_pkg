module JLL

using GAP
using GAP_pkg_browse_jll

function __init__()
    # ensure GAP finds kernel extensions or other binaries
    sopath = joinpath(GAP_pkg_browse_jll.find_artifact_dir(), "lib", "gap")
    @debug "GAP package 'browse' sopath = " * sopath
    setproperty!(GAP.Globals.DirectoriesPackageProgramsOverrides, :browse, GapObj(sopath))
end

end # module
