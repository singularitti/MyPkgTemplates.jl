```@meta
CurrentModule = {{{PKG}}}
```

# {{{PKG}}}

Documentation for [{{{PKG}}}](https://github.com/{{{USER}}}/{{{PKG}}}.jl).

See the [Index](@ref main-index) for the complete list of documented functions
and types.

The code, which is [hosted on GitHub](https://github.com/{{{USER}}}/{{{PKG}}}.jl), is tested
using various continuous integration services for its validity.

This repository is created and maintained by
[@singularitti](https://github.com/singularitti), and contributions are highly welcome.

## Package features



## Installation

The package can be installed with the Julia package manager.
From the Julia REPL, type `]` to enter the Pkg REPL mode and run:

```julia
pkg> add {{{PKG}}}
```

Or, equivalently, via the `Pkg` API:

```@repl
import Pkg; Pkg.add("{{{PKG}}}")
```

## Documentation

- [**STABLE**](https://{{{USER}}}.github.io/{{{PKG}}}.jl/stable) — **documentation of the most recently tagged version.**
- [**DEV**](https://{{{USER}}}.github.io/{{{PKG}}}.jl/dev) — _documentation of the in-development version._

## Project status

The package is developed for and tested against Julia `v1.6` and above on Linux, macOS, and
Windows.

## Questions and contributions

You can post usage questions on
[our discussion page](https://github.com/{{{USER}}}/{{{PKG}}}.jl/discussions).

We welcome contributions, feature requests, and suggestions. If you encounter any problems,
please open an [issue](https://github.com/{{{USER}}}/{{{PKG}}}.jl/issues).
The [Contributing](@ref) page has
a few guidelines that should be followed when opening pull requests and contributing code.

## Manual outline

```@contents
Pages = [
    "man/installation.md",
    "man/troubleshooting.md",
    "developers/contributing.md",
    "developers/style-guide.md",
    "developers/design-principles.md",
]
Depth = 3
```

## Library outline

```@contents
Pages = ["lib/public.md", "lib/internals.md"]
```

### [Index](@id main-index)

```@index
Pages = ["lib/public.md"]
```
