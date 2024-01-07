# !/bin/bash
#
# nvim-docker.sh
# # ported to bin executable to run startup script on provided fi 
#
# Author: Thomas Patton (tjpatton1@gmail.com)
#

brew install yq

if [ $# -eq 0 ]; then
    echo "Usage: $0 <original_image>"
    exit 1
fi

original_image=$1
new_image="${original_image}-nvim"

# create a temporary Dockerfile
cat <<EOF > Dockerfile.nvim
FROM $original_image

# copy your setup script and execute it
COPY setup-script.sh /tmp/setup-script.sh
RUN /bin/bash /tmp/setup-script.sh

# clean up
RUN rm /tmp/setup-script.sh
EOF

# build the new Docker image
docker build -t $new_image -f Dockerfile.nvim .

# Clean up the temporary Dockerfile
rm Dockerfile.nvim

echo "Successfully created $new_image"

