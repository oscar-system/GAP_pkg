#
# This script is used to update the Julia wrapper packages for GAP packages.
#

# input GAP package URL
# output: generate / update
using ArtifactUtils
using Downloads
#using GAP
using Pkg
using JSON
using LocalRegistry

# GAP.jl compat string for use in Project.toml
GAP_jl_version = "0.9"

"""
    lookup_pkg(pkgname::String)

Given the package name `pkgname`, return either its UUID (if a package with
the name exists), or `nothing`
"""
function lookup_pkg(pkgname::String)
    @static if VERSION >= v"1.7-DEV"
        uuids = Pkg.Types.registered_uuids(Pkg.Types.Context().registries, pkgname)
    else
        uuids = Pkg.Types.registered_uuids(Pkg.Types.Context(), pkgname)
    end
    isempty(uuids) && return nothing
    @assert length(uuids) == 1
    return first(uuids)
end

function parse_gap_pkg_version(vstr::String)
    # deal with Homalg/CAP versions of the form 2022.11-17
    vstr = replace(vstr, "-" => ".")
    v = VersionNumber(vstr)

    # we now check if the conversion was "faithful". Take special
    # care to identify "1.2" with "1.2.0", and "1.2.04" with "1.2.4"
    reduced_vstr = replace(vstr, r"\.0(\d)" => s".\1")
    if reduced_vstr != string(v) && reduced_vstr*".0" != string(v)
        error("failed to handle GAP package version $reduced_vstr (parsed to $v)")
    end
    return v
end

# given a pkginfo record from package-infos.json, generate resp.
# update the corresponding Julia wrapper
function update_pkg(pkginfo)

    # get the names of the GAP package and the corresponding Julia package
    gap_pkgname = pkginfo["PackageName"]
    pkgname = lowercase(gap_pkgname)
    julia_pkgname = "GAP_pkg_$(pkgname)"

    # ensure there is a package directory
    if !isdir(julia_pkgname)
        Pkg.generate(julia_pkgname)
    end

    #
    # Update Project.toml
    #
    projpath = "$(julia_pkgname)/Project.toml"
    proj = Pkg.Types.read_project(projpath)
    @assert proj.name == julia_pkgname
    proj.version = parse_gap_pkg_version(pkginfo["Version"])
    proj.deps["Pkg"] = Base.UUID("44cfe95a-1eb2-52ea-b672-e2afdf69b78f")
    proj.deps["GAP"] = lookup_pkg("GAP")
    Pkg.Operations.set_compat(proj, "GAP", GAP_jl_version)
    Pkg.Operations.set_compat(proj, "julia", "1.6")

    #
    # check if there is a corresponding JLL; if so, add it as a dependency
    #
    jllname = "$(julia_pkgname)_jll"
    jlluuid = lookup_pkg(jllname)
    if jlluuid !== nothing
        proj.deps[jllname] = jlluuid
        proj.deps["BinaryWrappers"] = lookup_pkg("BinaryWrappers")
    end
    # TODO: can we automatically "guess" the corresponding version
    # of the JLL?? maybe in some cases, but not always...

    # translate GAP package dependencies
    # TODO: beware of cycles, e.g. polycyclic vs. polenta
    deps_statements = ""
#=
    for dep in pkginfo[:Dependencies][:NeededOtherPackages]
        # vectors of the form ["GAPDoc", "1.5"]
        lowercase(dep[1]) == "gapdoc" && continue
        depname = "GAP_pkg_$(lowercase(dep[1]))"
        uuid = lookup_pkg(depname) # TODO: might not yet be in the global registry; so perhaps we should also load all UUIds from the local Project.toml files?
        uuid !== nothing || error("could not find $depname")
        proj.deps[depname] = uuid
        # TODO: compat???
        deps_statements *= "using $depname\n"
    end
=#

    # Write out Project.toml
    Pkg.Types.write_project(proj, projpath)

    #
    # generate README.md
    #
    if haskey(pkginfo, "IssueTrackerURL")
        issue_tracker = pkginfo["IssueTrackerURL"]
        issue_tracker= "\nReport general issues with the GAP package at <$issue_tracker>."
    else
        issue_tracker = ""
    end
    if haskey(pkginfo, "License")
        license = pkginfo["License"]
    else
        license = "unknown"
    end
    open(joinpath(julia_pkgname, "README.md"), "w") do f
       write(f,"""
       # $(julia_pkgname)

       This is a generated Julia wrapper package for the GAP package $(gap_pkgname) $(pkginfo["Version"]).
       
       ## Issues
       
       Please report issues specific to this wrapper package at <https://github.com/oscar-system/GAP_pkg>.
       $(issue_tracker)
       
       ## License
       
       This wrapper is under the MIT license (see file `LICENSE`).
       
       The license of the wrapped GAP package is $(license).
       """)
   end

    #
    # all the Julia wrapper packages are MIT licensed, like this script
    #
    cp("LICENSE", joinpath(julia_pkgname, "LICENSE"), force=true)

    #
    # add the package tarball as an artifact
    #
    url = pkginfo["ArchiveURL"]
    types = split(pkginfo["ArchiveFormats"], " ")
    if ".tar.bz2" in types
        url *= ".tar.bz2"
    elseif ".tar.gz" in types
        url *= ".tar.gz"
    else
        url *= first(types)
    end
    artifacts_toml = joinpath(julia_pkgname, "Artifacts.toml")
    ArtifactUtils.add_artifact!(artifacts_toml, pkgname, url; force=true)

    #
    # generate source code
    #
    mkpath("$(julia_pkgname)/src")

    # NOTE: the following code assumes that no GAP package contains both a kernel
    # extension *and* executables. If this ever happens, we could make it possible
    # by using @generate_wrappers and then putting a symlink to the kext into bindir.
    jlluuid !== nothing && open(joinpath(julia_pkgname, "src", "jll.jl"), "w") do f
        write(f,"""
        module JLL

        using GAP
        using BinaryWrappers
        using $jllname

        const bindir = if isdir(joinpath($jllname.find_artifact_dir(), "bin"))
                           @generate_wrappers($jllname)
                       else
                           joinpath($jllname.find_artifact_dir(), "lib", "gap")
                       end

        function __init__()
            # ensure GAP finds kernel extensions or other binaries
            @debug "GAP package '$pkgname' bindir = \$bindir"
            setproperty!(GAP.Globals.DirectoriesPackageProgramsOverrides, :$pkgname, GapObj(bindir))
        end

        end # module
        """)
    end

    if jlluuid !== nothing
        deps_statements *= """

        include("jll.jl")
        """
    end

    open(joinpath(julia_pkgname, "src", "$(julia_pkgname).jl"), "w") do f
        write(f,"""
        # ATTENTION: This file was generated, do not edit by hand.
        module $julia_pkgname

        using Pkg.Artifacts
        using GAP
        $deps_statements
        function __init__()
            # ensure GAP will load the correct instance of this package
            path = artifact"$pkgname"
            @debug "GAP package '$pkgname' path = " * path
            GAP.Globals.SetPackagePath(GapObj("$pkgname"), GapObj(path))
        end

        function load()
            res = GAP.Globals.LoadPackage(GapObj("$pkgname"))
            if res != true
                error("failed to load GAP package $pkgname")
            end
        end
        end # module
        """)
    end

    #
    # generate a simple test
    #
    mkpath("$(julia_pkgname)/test")
    open(joinpath(julia_pkgname, "test", "runtests.jl"), "w") do f
        write(f,"""
        using $julia_pkgname
        using Test

        import $julia_pkgname
        println("TODO")
        """)
    end

    return nothing
end

# TODO: add special data to implement overrides, to ...
# - break dependency cycles (e.g. polycyclic <-> alnuth)
# - add in use of JLLs were available (TODO: or perhaps this can be automated???)
# ...

function parse_package_infos(fname::String = "package-infos.json")
    pkgs = JSON.parsefile("package-infos.json")
    for (name, pkginfo) in pkgs
        println("Processing '$name'")
        update_pkg(pkginfo)
    end
end

function add_all_to_registry(names::Vector{String} = String[])
    if isempty(names)
        pkgs = JSON.parsefile("package-infos.json")
        names = colllect(keys(pkgs))
    end
    for name in names
        println("Processing '$name'")
        LocalRegistry.register("./GAP_pkg_$(name)" ; registry="GAP_Registry")
    end
end

nothing
