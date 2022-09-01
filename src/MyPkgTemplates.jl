module MyPkgTemplates

using PkgTemplates
using PkgTemplates:
    Plugin,
    default_file,
    gen_file,
    render_file,
    combined_view,
    tags,
    @plugin,
    @with_kw_noshow

import PkgTemplates: view, hook

export build, default_dir

default_dir() = "templates"

@plugin struct MyDocs <: Plugin
    readme_md::String = join(["templates", "README.md"], '/')
    installation_md::String = "docs/src/installation.md"
    contributing_md::String = "docs/src/developers/contributing.md"
    style_md::String = "docs/src/developers/style.md"
    troubleshooting_md::String = "docs/src/troubleshooting.md"
end

function view(::MyDocs, t::Template, pkg::AbstractString)
    return Dict("USER" => t.user, "PKG" => pkg, "jl" => "1.6.7")
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

function build(; user="MineralsCloud", dir="~/.julia/dev")
    return Template(;
        user=user,
        dir=dir,
        plugins=[
            Git(),
            GitHubActions(;
                x86=true,
                osx=true,
                windows=true,
                extra_versions=["1.3", "1.6", "1.7", "1.8", "nightly"],
            ),
            AppVeyor(; x86=true, extra_versions=["1.2", "1.4", "1.6", "1.8", "nightly"]),
            CirrusCI(;
                extra_versions=["1.3", "1.5", "1.6", "nightly"],
                image="freebsd-12-1-release-amd64",
                file="templates/cirrus.yml",
            ),
            GitLabCI(; extra_versions=["1.0", "1.1", "1.2", "1.4"]),
            CompatHelper(),
            RegisterAction(),
            PkgEvalBadge(),
            ColPracBadge(),
            TagBot(),
            License(),
            Codecov(),
            Documenter{GitHubActions}(; index_md="templates/docs/src/index.md"),
            !Readme,
            MyDocs(),
        ],
    )
end

end
