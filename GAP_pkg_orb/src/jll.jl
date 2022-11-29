module JLL

using GAP
using GAP_pkg_orb_jll

function __init__()
    # ensure GAP finds kernel extensions or other binaries
    sopath = joinpath(GAP_pkg_orb_jll.find_artifact_dir(), "lib", "gap")
    @debug "GAP package 'orb' sopath = " * sopath
    setproperty!(GAP.Globals.DirectoriesPackageProgramsOverrides, :orb, GapObj(sopath))
end

end # module
