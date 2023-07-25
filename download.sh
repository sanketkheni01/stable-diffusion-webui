#!/usr/bin/env bash

set -Eeuo pipefail

# TODO: maybe just use the .gitignore file to create all of these
# mkdir  ./models/Stable-diffusion \
#   ./models/GFPGAN \
#   ./models/RealESRGAN \
#   ./models/LDSR \
#   ./models/VAE

echo "Downloading, this might take a while..."

#aria2c -x 10 --disable-ipv6 --input-file ./links.txt --dir ./models --continue

git clone https://github.com/Vetchems/sd-civitai-browser.git ./extensions/civitai_extension
git clone https://github.com/imrayya/stable-diffusion-webui-Prompt_Generator.git ./extensions/Prompt_Generator
git clone https://github.com/Mikubill/sd-webui-controlnet.git ./extensions/controlnet
git clone https://github.com/Uminosachi/sd-webui-inpaint-anything.git ./extensions/inpaint-anything
git clone https://github.com/richrobber2/canvas-zoom.git ./extensions/canvas-zoom
git clone https://github.com/deforum-art/sd-webui-deforum-art.git ./extensions/deforum
git clone https://github.com/s0md3v/sd-webui-roop.git ./extensions/roop
git clone git clone https://github.com/dustysys/ddetailer.git ./extensions/ddetailer
git clone https://github.com/fkunn1326/openpose-editor.git ./extensions/openpose-editor
git clone https://github.com/continue-revolution/sd-webui-segment-anything.git ./extensions/segment-anything