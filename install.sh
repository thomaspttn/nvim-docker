#!/bin/bash
# FILE: install.sh
# DESCRIPTION: Master setup script for nvim-docker
# AUTHOR: Thomas Patton

# install directory
INSTALL_DIR="/root/"

echo "Running Docker container setup..."

# Update XDG_CONFIG_HOME
export XDG_CONFIG_HOME="${INSTALL_DIR}.config"
export XDG_DATA_HOME="${INSTALL_DIR}.local/share"
export XDG_STATE_HOME="${INSTALL_DIR}.local/state"
export TERM="xterm-256color"

cd "$INSTALL_DIR"
rm -rf "${INSTALL_DIR}.config"
sudo apt-get update

# CLANG
sudo apt-get install -y clang
sudo ln -s -f .clangd ~/.clangd

# BEAR
sudo apt-get install -y bear

# XCLIP 
sudo apt-get install -y xclip

# NEOVIM
wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
sudo ln -s "${INSTALL_DIR}nvim-linux64/bin/nvim" /usr/local/bin/nvim
sudo apt-get install -y python3-venv

# RIPGREP
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo apt-get install "./ripgrep_13.0.0_amd64.deb"

# Git Repository (provided as an argument)
if [ -n "$1" ]; then
    git clone "$1" "${INSTALL_DIR}.config/nvim" 
else
    echo "Git repository URL not provided, proceeding without"
fi

# exit
cd ~


