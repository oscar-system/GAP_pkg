module JLL

using GAP
using BinaryWrappers
using GAP_pkg_cddinterface_jll

const bindir = if isdir(joinpath(GAP_pkg_cddinterface_jll.find_artifact_dir(), "bin"))
                   @generate_wrappers(GAP_pkg_cddinterface_jll)
               else
                   joinpath(GAP_pkg_cddinterface_jll.find_artifact_dir(), "lib", "gap")
               end

function __init__()
    # ensure GAP finds kernel extensions or other binaries
    @debug "GAP package 'cddinterface' bindir = $bindir"
    setproperty!(GAP.Globals.DirectoriesPackageProgramsOverrides, :cddinterface, GapObj(bindir))
end

end # module
