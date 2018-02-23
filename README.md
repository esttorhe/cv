# Esteban's CV

For as long as I can remember I never keep my `CV` neither at hand nor updated.

Every time I do something and I think about adding it to my `CV` I end up not doing it because is a «hard» process and then when I get down to updating it most of the things I did have already slipped my mind and thus, it ends up being not all that good.

Thanks to [this tweet][tweet] by [Gilad][gilad] I found [Boris][neonacho]'s [`markdown` `CV`][boriscv] and thought it was a pretty neat idea and also perhaps a nice way for me to keep my `CV` upated.

# Shake 'N Bake

If you can't be bothered much with this and just want to see the output; run:

```console
make
```

And that will generate a `cv.pdf` file which is the `PDF` transformation of [cv.md][cv].

## Options?

The `Makefile` in the repo includes a few targets to help update and check the `CV`.

It also contains it's own `help` target which outputs the following:

|  Command | Description |
| :-----------: | :------------ |
| all             |               Removes «`cv.html`» and «`cv.pdf`» if found on disk, installs the dependencies and generates a pdf version of the CV. |
| clean            |              Removes «`cv.html`» and «`cv.pdf`» if found on disk |
| dependencies             |      Installs the npm packages, if `wkhtmltopdf` is not found it also installs it using homebrew. |
| deploy              |           Calls «clean» and «html» targets, then generates the pdf file, & creates the docs folder |
| help             |              Displays this help menu |
| html          |                 Removes «`cv.html`» and «`cv.pdf`» if found on disk, install the dependencies and generates an html version of the CV. |
| watch                |          Same as the «`html`» target but listens to changes on «`cv.md`» and hot reloads the changes to http://localhost:4000/cv.html. |

[neonacho]:https://twitter.com/neonacho
[boriscv]:https://github.com/neonichu/cv
[tweet]:https://twitter.com/giladronat/status/964222623042355200
[gilad]:https://twitter.com/giladronat
[cv]:./cv.md
