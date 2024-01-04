# nvim-docker
**Author:** Thomas Patton

Quick setup for NeoVim inside Docker, aimed at C/C++ development.

## Quick Setup 
(From inside a Docker container)

```
git clone https://github.com/thomaspttn/nvim-docker.git /root/nvim-docker/ && source /root/nvim-docker/install.sh
```

## Introduction
This install script sets up a local install of NeoVim aimed at being used inside a Docker container. This is super useful for when your build environment differs from the platform you develop on. This setup also uses the `/root/` directory to avoid interfering with any mounted volumes. Note that this involves setting the `$XDG_CONFIG_HOME` variable which may mess with other things in the container.

![NvChad](https://nvchad.com/) is used as the NeoVim preset.

## Instructions
1. `docker run` with your container of choice and `-it` to enter the container 
2. Once inside the contianer, run the setup command above
