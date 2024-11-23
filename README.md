# nvim-docker
**Author:** Thomas Patton

One line setup for Neovim inside of an Ubuntu Docker container

![License](https://img.shields.io/badge/license-MIT-blue.svg)

## 🚀 Quick Setup 
From inside a Docker container, clone the repo:

```
git clone https://github.com/thomaspttn/nvim-docker.git /root/nvim-docker/ 
```
And then run the setup script with a Github link to your Neovim configuration:

```
source /root/nvim-docker/install.sh <YOUR_NVIM_GIT_REPO>
```

For example:

```
source /root/nvim-docker/install.sh https://github.com/thomaspttn/nvim.git
```

Note that this install overwrites several environment variables related to XDG Configuration.

## 🌐 What Is This?
For a lot of my development work I need to develop inside Docker containers rather than my host machine. Setting up Neovim every time I do a `docker run` seemed like a pain, though, so I wrote this setup script to automate that process. `install.sh` installs the Neovim AppImage along with other tools like `ripgrep`and `bear` that I use for daily development. In the interest of supporting arbitrary configurations, `install.sh` can optionally take a link to a `nvim` Git repo specifying your custom Neovim setup.

Importantly, I write a lot of this data into the `/root/` directory of the container. This avoids issues with duplicate Neovim files in the case that the Docker container is mounted (which is always in my case). I also export a number of environment variables related to XDG configuration to account for this change.

I could just make a new "enhanced" version of my image so that I don't need to do run the setup every time but there are a few reasons I don't do this. Firstly, I typically run my images using a specific binary and I don't want to deal with needing to rewrite that. I also switch between docker images and so I don't want to have to keep track of multiple "enhanced" images. If this changes in the future I'll add in the functionality.

## 🛠️ Contributing
This project could definitely become bigger if people find it to be useful. If you've got something you'd like to add, open up a pull request!

## 📄 License
This project is licensed under the [MIT License](LICENSE).

