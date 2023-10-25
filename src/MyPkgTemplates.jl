module MyPkgTemplates

using PkgTemplates
using PkgTemplates:
    Plugin,
    FilePlugin,
    default_file,
    gen_file,
    render_file,
    combined_view,
    tags,
    @plugin,
    @with_kw_noshow

import PkgTemplates: view, user_view, hook, source, destination

export build

@plugin struct MyDocs <: Plugin
    installation_md::String = "docs/src/man/installation.md"
    contributing_md::String = "docs/src/developers/contributing.md"
    style_md::String = "docs/src/developers/style-guide.md"
    design_md::String = "docs/src/developers/design-principles.md"
    troubleshooting_md::String = "docs/src/man/troubleshooting.md"
end

@plugin struct JuliaFormatter <: FilePlugin
    file::String = "templates/.JuliaFormatter.toml"
end

source(p::JuliaFormatter) = p.file

destination(::JuliaFormatter) = ".JuliaFormatter.toml"

function view(::MyDocs, t::Template, pkg::AbstractString)
    return Dict("USER" => t.user, "PKG" => pkg, "jl" => "1.6.7", "branch" => getbranch(t))
end
view(::JuliaFormatter, ::Template, ::AbstractString) = Dict{String,Any}()

function user_view(::Readme, t::Template, pkg::AbstractString)
    return Dict("USER" => t.user, "PKG" => pkg, "branch" => getbranch(t))
end

function getbranch(t::Template)
    return only(filter(x -> x isa Git, t.plugins)).branch
end

function hook(p::MyDocs, t::Template, pkg_dir::AbstractString)
    pkg = basename(pkg_dir)
    for field in fieldnames(MyDocs)
        value = getfield(p, field)
        path = joinpath(pkg_dir, getfield(p, field))
        file = render_file(value, combined_view(p, t, pkg), tags(p))
        gen_file(path, file)
    end
end

function build(; user="MineralsCloud", dir="~/.julia/dev", branch="main")
    return Template(;
        user=user,
        dir=dir,
        plugins=[
            Git(; branch=branch),
            GitHubActions(;
                x86=true,
                osx=true,
                windows=true,
                extra_versions=["1.6", "1.7", "1.8", "1.9", "nightly"],
            ),
            AppVeyor(; x86=true, extra_versions=["1.6", "1.7", "1.8", "1.9", "nightly"]),
            CirrusCI(;
                extra_versions=["1.6", "1.7", "1.8", "1.9"],
                image="freebsd-12-1-release-amd64",
                file="templates/cirrus.yml",
            ),
            GitLabCI(; extra_versions=["1.6", "1.7", "1.8", "1.9"]),
            CompatHelper(),
            RegisterAction(),
            PkgEvalBadge(),
            ColPracBadge(),
            TagBot(),
            License(),
            Codecov(),
            Documenter{GitHubActions}(; index_md="docs/src/index.md"),
            Readme(; file="README.md"),
            MyDocs(),
            JuliaFormatter(),
        ],
    )
end

end
