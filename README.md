# nvim-docker
**Author:** Thomas Patton

Quick setup for NeoVim inside Docker using NvChad

![License](https://img.shields.io/badge/license-MIT-blue.svg)

## 🚀 Quick Setup 
From inside a Docker container, run the following:

```
git clone https://github.com/thomaspttn/nvim-docker.git /root/nvim-docker/ && source /root/nvim-docker/install.sh
```

## 🌐 Introduction
This install script sets up a local installation of NeoVim intended for use inside a Docker container. It's particularly useful when your build environment differs from the platform you develop on. The setup utilizes the `/root/` directory to prevent interference with any mounted volumes. Note that this involves setting the `$XDG_CONFIG_HOME` variable, which may affect other settings in the container.

[NvChad](https://www.nvchad.com/) is employed as the NeoVim preset.

## 📝 Instructions
1. Run `docker run` with your container of choice and `-it` to enter the container.
2. Once inside the container, execute the setup command mentioned above.

## 🛠️ Contributing
I highly doubt this project will be used by others but if you're interested in contributing don't hesitate to do so.

## 📄 License
This project is licensed under the [MIT License](LICENSE).

