# A Multiple Architecture Ubuntu Editorial Environment

## Purpose

- Multi-arch Ubuntu Editing Environment. Works with Visual Studio Code, plus basic text analysis and Pandoc compile.

## Package

- `ubuntu-multiarch-dep.yml` is most basic non-image deployment of mutli-arch vscode friendly installation. Upon connect, vscode will install server.
- `vsc-ubuntu-ma.yml` pulls image from repository, already built with vscode, pandoc, and text analysis support.

## Local Kubernetes Cluster Has Multiple Architectures

- There are four Raspberry Pi 4 Model B nodes.  There are two x86_64 Generic nodes.
- The philosophy of this kubernetes cluster is bare bones commodity systems.

## Build Muli-Arch Image

To build the image in Docker, then upload to repository.

```bash
docker vsc-ubuntu-ma build --platform linux/amd64,linux/arm64
docker push hittjw/vsc-ubuntu-ma:latest
```



/EOF/