# Resume

Using [Awesome-CV](https://github.com/posquit0/Awesome-CV) as base.

Pre-requisite: Docker

## Compile resume.pdf

Define an alias in your `.zshrc`:
```bash

echo "alias resume='docker run --rm --user $(id -u):$(id -g) -i -w "/doc" -v "$PWD":/doc thomasweise/texlive:1.0.0 make'" >> ~/.zshrc
source ~/.zshrc
resume
```

or a longer way accessing the container:
```bash
docker run -v $(pwd):/doc/ -t -i thomasweise/texlive:1.0.0
xelatex resume.tex
```

## Cover letters

Make sure to update the submodule with the private cover letters repo:

```bash
git submodule update
```

then call:

```bash
resume cover/the-cover-letter
```
