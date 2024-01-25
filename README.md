# {{{PKG}}}

| **Documentation** | [![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://{{{USER}}}.github.io/{{{PKG}}}.jl/stable/) [![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://{{{USER}}}.github.io/{{{PKG}}}.jl/dev/)                                                                                                                                                                                                                                                                                                 |
| :---------------: | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Build Status**  | [![Build Status](https://github.com/{{{USER}}}/{{{PKG}}}.jl/actions/workflows/CI.yml/badge.svg?branch={{{branch}}})](https://github.com/{{{USER}}}/{{{PKG}}}.jl/actions/workflows/CI.yml?query=branch%3A{{{branch}}}) [![Build Status](https://ci.appveyor.com/api/projects/status/github/{{{USER}}}/{{{PKG}}}.jl?svg=true)](https://ci.appveyor.com/project/{{{USER}}}/{{{PKG}}}-jl)[![Build Status](https://api.cirrus-ci.com/github/{{{USER}}}/{{{PKG}}}.jl.svg)](https://cirrus-ci.com/github/{{{USER}}}/{{{PKG}}}.jl) |
|   **Coverage**    | [![Coverage](https://github.com/{{{USER}}}/{{{PKG}}}.jl/badges/{{{branch}}}/coverage.svg)](https://github.com/{{{USER}}}/{{{PKG}}}.jl/commits/{{{branch}}}) [![Coverage](https://codecov.io/gh/{{{USER}}}/{{{PKG}}}.jl/branch/{{{branch}}}/graph/badge.svg)](https://codecov.io/gh/{{{USER}}}/{{{PKG}}}.jl)                                                                                                                                                                                                                |
|    **Others**     | [![Code Style: Blue](https://img.shields.io/badge/code%20style-blue-4495d1.svg)](https://github.com/invenia/BlueStyle) [![License](https://img.shields.io/github/license/{{{USER}}}/{{{PKG}}}.jl)](https://github.com/{{{USER}}}/{{{PKG}}}.jl/blob/{{{branch}}}/LICENSE)                                                                                                                                                                                                                                                   |

The code, which is [hosted on GitHub](https://github.com/{{{USER}}}/{{{PKG}}}.jl), is tested
using various continuous integration services for its validity.

This repository is created and maintained by
[@singularitti](https://github.com/singularitti), and contributions are highly welcome.

## Package features



## Installation

The package can be installed with the Julia package manager.
From [the Julia REPL](https://docs.julialang.org/en/v1/stdlib/REPL/), type `]` to enter
the [Pkg mode](https://docs.julialang.org/en/v1/stdlib/REPL/#Pkg-mode) and run:

```julia-repl
pkg> add {{{PKG}}}
```

Or, equivalently, via [`Pkg.jl`](https://pkgdocs.julialang.org/v1/):

```julia
julia> import Pkg; Pkg.add("{{{PKG}}}")
```

## Documentation

- [**STABLE**](https://{{{USER}}}.github.io/{{{PKG}}}.jl/stable/) — **documentation of the most recently tagged version.**
- [**DEV**](https://{{{USER}}}.github.io/{{{PKG}}}.jl/dev/) — _documentation of the in-development version._

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
