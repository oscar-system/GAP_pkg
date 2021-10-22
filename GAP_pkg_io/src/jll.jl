module JLL

using GAP
using GAP_pkg_io_jll

function __init__()
    # ensure GAP finds kernel extensions or other binaries
    sopath = joinpath(GAP_pkg_io_jll.find_artifact_dir(), "lib", "gap")
    @debug "GAP package 'io' sopath = " * sopath
    setproperty!(GAP.Globals.DirectoriesPackageProgramsOverrides, :io, GapObj(sopath))
end

end # module
