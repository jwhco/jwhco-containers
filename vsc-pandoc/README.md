## Run the pandoc Docker container

You need a working directory and user to compile, unless inside continer via VsCode remote.

Start in the root of your Github clones or workspaces. 

```bash
docker run -it --rm \
       --volume "$(pwd):/workspaces" \
       --user $(id -u):$(id -g) \
       hittjw/vsc-pandoc bash
```

From here you'll be able to use `Makefile` in the checked out workspace.

## How is this different from `pandoc/minimal`

The `vsc-pandoc` is meant as a working environment, not only compiling.

If you are writing multiple chapter, large publications the working environment is best.

If you quick compiling single document files, then the `pandoc/minimal` is best.

- See [pandoc/minimal](https://hub.docker.com/r/pandoc/minimal) on Docker Hub.

For specific questions about this image, contact [Justin Hitt](https://www.justinhitt.com/contact/).