#
# This script is used to update the Julia wrapper packages for GAP packages.
#

# input GAP package URL
# output: generate / update
using ArtifactUtils
using Downloads
using GAP
using Pkg

# GAP.jl version to require as compat
GAP_jl_version = "v0.7.2"


"""
    parse_pkginfo(pkginfopath::String)

Given the path `pkginfopath` to a GAP `PackageInfo.g` file, read it (or as
much of it as possible, anyway) into a Julia dict which is returned.
"""
function parse_pkginfo(pkginfopath::String)
    isfile(pkginfopath) || error("$pkginfopath is not a regular file")
    GAP.Globals.Read(GapObj(pkginfopath))
    r = GAP.Globals.GAPInfo.PackageInfoCurrent
    @assert GAP.Globals.IsRecord(r)

    # convert the record, but skip AvailabilityTest or anything else bound to a function
    pkginfo = Dict{Symbol,Any}()
    for key in Vector{Symbol}(GAP.Globals.RecNames(r))
        val = getproperty(r, key)
        GAP.Globals.IsFunction(val) && continue
        pkginfo[key] = GAP.gap_to_julia(val; recursive = true)
    end
    return pkginfo
end

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


# given the path to a GAP package directory,
function update_pkg(pkgpath::String)

    # read PackageInfo.g
    isdir(pkgpath) || error("$path is not a directory")
    pkginfopath = joinpath(pkgpath, "PackageInfo.g")
    pkginfo = parse_pkginfo(pkginfopath)

    # get the names of the GAP package and the corresponding Julia package
    gap_pkgname = pkginfo[:PackageName]
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
    proj.deps["Pkg"] = Base.UUID("44cfe95a-1eb2-52ea-b672-e2afdf69b78f")
    proj.deps["GAP"] = lookup_pkg("GAP")
    proj.compat["GAP"] = "0.7" # FIXME adjust this sometimes? but when / who does it?
    proj.compat["julia"] = "1.6"

    println("TODO: adjust version...")

    #
    # check if there is a corresponding JLL; if so, add it as a dependency
    #
    jllname = "$(julia_pkgname)_jll"
    jlluuid = lookup_pkg(jllname)
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
    open(joinpath(julia_pkgname, "README.md"), "w") do f
       write(f,"""
       # $(julia_pkgname)

       This is generated wrapper package for the GAP package $(gap_pkgname) $(pkginfo[:Version]).
       """)
   end

    #
    # all the Julia wrapper packages are MIT licensed, like this script
    #
    cp("LICENSE", joinpath(julia_pkgname, "LICENSE"), force=true)

    #
    # add the package tarball as an artifact
    #
    url = pkginfo[:ArchiveURL]
    types = split(pkginfo[:ArchiveFormats], " ")
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

    jlluuid !== nothing && open(joinpath(julia_pkgname, "src", "jll.jl"), "w") do f
        write(f,"""
        module JLL

        using GAP
        using $jllname

        function __init__()
            # ensure GAP finds kernel extensions or other binaries
            sopath = joinpath($jllname.find_artifact_dir(), "lib", "gap")
            @debug "GAP package '$pkgname' sopath = " * sopath
            setproperty!(GAP.Globals.DirectoriesPackageProgramsOverrides, :$pkgname, GapObj(sopath))
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
