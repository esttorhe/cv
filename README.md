# Esteban's CV

For as long as I can remember I never keep my `CV` neither at hand nor updated.

Every time I do something and I think about adding it to my `CV` I end up not doing it because is a «hard» process and then when I get down to updating it most of the things I did have already slipped my mind and thus, it ends up being not all that good.

Thanks to [this tweet][tweet] by [Gilad][gilad] I found [Boris][neonacho]'s [`markdown` `CV`][boriscv] and thought it was a pretty neat idea and also perhaps a nice way for me to keep my `CV` upated.

# Prerequisites

- [mise](https://mise.jdx.dev/) for managing `node` and `weasyprint` (via [pipx backend](https://mise.jdx.dev/dev-tools/backends/pipx.html))
- [Homebrew](https://brew.sh/) for system dependencies (`pango`)

```console
brew install pango
mise install
```

# Shake 'N Bake

If you can't be bothered much with this and just want to see the output; run:

```console
mise run
```

And that will generate a `cv.pdf` file which is the `PDF` transformation of [cv.md][cv].

## Options?

All tasks are defined in `.mise.toml`. Run `mise tasks` for the full list. The current set:

|  Command | Description |
| :-----------: | :------------ |
| `mise run`         | (default) Cleans generated files, installs deps, and builds `cv.pdf`. |
| `mise run clean`   | Removes generated files (`cv.html`, `cv.pdf`, `docs`). |
| `mise run install` | Installs npm packages. |
| `mise run html`    | Builds `cv.html` from `cv.md`. |
| `mise run pdf`     | Builds `cv.pdf` from `cv.html` via `weasyprint`. |
| `mise run watch`   | Builds HTML then hot-reloads on `cv.md` changes at http://localhost:4000/cv.html. |
| `mise run deploy`  | Builds HTML + PDF then copies them into `docs/`. |

[neonacho]:https://twitter.com/neonacho
[boriscv]:https://github.com/neonichu/cv
[tweet]:https://twitter.com/giladronat/status/964222623042355200
[gilad]:https://twitter.com/giladronat
[cv]:./cv.md
