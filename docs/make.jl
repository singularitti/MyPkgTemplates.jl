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
            "Installation guide" => "installation.md",
        ],
        # "API Reference" => "public.md",
        "Developer Docs" => [
            "Contributing" => "developers/contributing.md",
            "Style Guide" => "developers/style.md",
        ],
        "Troubleshooting" => "troubleshooting.md",
    ]
)
