using MyPkgTemplates
using Documenter

DocMeta.setdocmeta!(MyPkgTemplates, :DocTestSetup, :(using MyPkgTemplates); recursive=true)

makedocs(;
    modules=[MyPkgTemplates],
    authors="singularitti <singularitti@outlook.com> and contributors",
    repo="https://github.com/singularitti/MyPkgTemplates.jl/blob/{commit}{path}#{line}",
    sitename="MyPkgTemplates.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Manual" => [
            "Installation Guide" => "man/installation.md",
            "Troubleshooting" => "man/troubleshooting.md",
        ],
        "Reference" => Any[
            "Public API" => "lib/public.md",
            "Internals" => map(
                s -> "lib/internals/$(s)",
                sort(readdir(joinpath(@__DIR__, "src/lib/internals")))
            ),
        ],
        "Developer Docs" => [
            "Contributing" => "developers/contributing.md",
            "Style Guide" => "developers/style-guide.md",
            "Design Principles" => "developers/design-principles.md",
        ],
    ]
)
