FROM voxl-cross:V2.6
ENV XDG_CONFIG_HOME=/root/.config

RUN git clone https://github.com/thomaspttn/nvim-docker

WORKDIR /nvim-docker

RUN /bin/bash install.sh
