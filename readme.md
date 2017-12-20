# Resume

Using [Awesome-CV](https://github.com/posquit0/Awesome-CV) as base.

## Installing and compile

First, installing TeX with an [updated script](https://github.com/scottkosty/install-tl-ubuntu)

```bash
wget https://github.com/scottkosty/install-tl-ubuntu/raw/master/install-tl-ubuntu
chmod +x ./install-tl-ubuntu
sudo ./install-tl-ubuntu
```

Follow the instructions... wait a lot and then compile with:

```bash
xelatex resume.tex
```

Alternately, using docker you could use something like:

```bash
docker run -v /home/alter/workspace/resume/:/doc/ -t -i thomasweise/texlive
```
