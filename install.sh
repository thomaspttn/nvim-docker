# FILE: install.sh
# DESCRIPTION: Master setup script for nvim-docker
# AUTHOR: Thomas Patton

# install directory
INSTALL_DIR="/root/"

if [ -f "/proc/1/cgroup" ]; then
    echo "Running Docker container setup..."

    # Update XDG_CONFIG_HOME
    export XDG_CONFIG_HOME="${INSTALL_DIR}.config"
    export XDG_DATA_HOME="${INSTALL_DIR}.local/share"
    export XDG_STATE_HOME="${INSTALL_DIR}.local/state"

    cd "$INSTALL_DIR"
    rm -rf "${INSTALL_DIR}.config"
    sudo apt-get update

    # CLANG
    sudo apt-get install -y clang
    sudo ln -s -f .clangd ~/.clangd

    # BEAR
    sudo apt-get install -y bear

    # NEOVIM
    wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
    tar xzvf nvim-linux64.tar.gz
    sudo ln -s "${INSTALL_DIR}nvim-linux64/bin/nvim" /usr/local/bin/nvim
    apt-get install -y python3-venv

    # RIPGREP
    curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
    sudo apt-get install "./ripgrep_13.0.0_amd64.deb"

    # CHADNV
    git clone https://github.com/NvChad/NvChad "${INSTALL_DIR}.config/nvim" --depth 1
    cp -r "${INSTALL_DIR}nvim-docker/custom" "${INSTALL_DIR}.config/nvim/lua/"


else
    echo "This doesn't seem to be a Docker container... are you sure??"
fi

