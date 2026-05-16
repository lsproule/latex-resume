# latex-resume

Lucas Sproule's resume, built with LaTeX. The generated PDF (`build/lucas.pdf`)
is committed because it is embedded on [lucassproule.com](https://lucassproule.com).

## Build

Requires `pdflatex` and the `roboto` LaTeX package.

```sh
make        # build PDF to build/lucas.pdf
make watch  # rebuild on save (requires inotify-tools and xpdf)
make clean  # remove aux/log/out
```
