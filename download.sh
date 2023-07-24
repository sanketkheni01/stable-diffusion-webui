#!/usr/bin/env bash

set -Eeuo pipefail

# TODO: maybe just use the .gitignore file to create all of these
# mkdir  ./models/Stable-diffusion \
#   ./models/GFPGAN \
#   ./models/RealESRGAN \
#   ./models/LDSR \
#   ./models/VAE

echo "Downloading, this might take a while..."

aria2c -x 10 --disable-ipv6 --input-file ./links.txt --dir ./models --continue

git clone https://github.com/civitai/sd_civitai_extension.git ./extensions/sd_civitai_extension
git clone https://github.com/imrayya/stable-diffusion-webui-Prompt_Generator.git ./extensions/Prompt_Generator