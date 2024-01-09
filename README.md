# nvim-docker
**Author:** Thomas Patton

One line setup for NeoVim inside of a Docker container

![License](https://img.shields.io/badge/license-MIT-blue.svg)

## 🚀 Quick Setup 
From inside a Docker container, run the following:

```
git clone https://github.com/thomaspttn/nvim-docker.git /root/nvim-docker/ && source /root/nvim-docker/install.sh
```

Note that this install overwrites several environment variables related to XDG Configuration.

## 🌐 Introduction 
NeoVim is a fantastic editor and is significantly more performant and customizable than a traditional alternative like VSCode. But NeoVim is known for being difficult to setup and this is especially true in the case where your code builds in a different environment than your local through a medium like Docker.

This repo allows for an easy one-line setup that can be run inside a Docker container to quickly configure NeoVim so that it can be used as an editor **inside** the container. This way, files like `compile_commands.json` will accurately reflect things like include locations for building your software.

## Future Direction
Ultimately my goal is to turn this repo into a binary called `nvim-docker` which can be used on arbitrary images to add NeoVim. This would evade needing to run the setup script every time upon entering the container. This project also currently only supports images which can use `apt` so in the future it would be good to support other images as well.

## 🛠️ Contributing
I highly doubt this project will be used by others but if you're interested in contributing don't hesitate to do so.

## 📄 License
This project is licensed under the [MIT License](LICENSE).

