module JLL

using GAP
using BinaryWrappers
using GAP_pkg_gauss_jll

const bindir = if isdir(joinpath(GAP_pkg_gauss_jll.find_artifact_dir(), "bin"))
                   @generate_wrappers(GAP_pkg_gauss_jll)
               else
                   joinpath(GAP_pkg_gauss_jll.find_artifact_dir(), "lib", "gap")
               end

function __init__()
    # ensure GAP finds kernel extensions or other binaries
    @debug "GAP package 'gauss' bindir = $bindir"
    setproperty!(GAP.Globals.DirectoriesPackageProgramsOverrides, :gauss, GapObj(bindir))
end

end # module
