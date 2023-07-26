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

git clone https://github.com/Vetchems/sd-civitai-browser.git ./extensions/civitai_extension
git clone https://github.com/imrayya/stable-diffusion-webui-Prompt_Generator.git ./extensions/Prompt_Generator
git clone https://github.com/Mikubill/sd-webui-controlnet.git ./extensions/controlnet
git clone https://github.com/Uminosachi/sd-webui-inpaint-anything.git ./extensions/inpaint-anything
git clone https://github.com/richrobber2/canvas-zoom.git ./extensions/canvas-zoom
git clone https://github.com/deforum-art/sd-webui-deforum.git ./extensions/deforum
git clone https://github.com/s0md3v/sd-webui-roop.git ./extensions/roop
#git clone https://github.com/dustysys/ddetailer.git ./extensions/ddetailer
git clone https://github.com/fkunn1326/openpose-editor.git ./extensions/openpose-editor
git clone https://github.com/continue-revolution/sd-webui-segment-anything.git ./extensions/segment-anything

#https://civitai.com/api/download/models/88158
#  out=Stable-diffusion/rundiffusionFX_v10.safetensors
#https://civitai.com/api/download/models/88167
#  out=Stable-diffusion/rundiffusionFX25D_v10.safetensors
#https://civitai.com/api/download/models/78676
#  out=Stable-diffusion/cetusMix_v4.safetensors
#https://civitai.com/api/download/models/54461
#  out=Stable-diffusion/crystalClear2_crystalClear2V1.safetensors
#https://civitai.com/api/download/models/60100
#  out=Stable-diffusion/crystalClear_Photorealistic.safetensors
#https://civitai.com/api/download/models/69832
#  out=Stable-diffusion/disneyPixarCartoon_v10.safetensors
#https://civitai.com/api/download/models/4270
#  out=Stable-diffusion/anygenV37_anygenv37.ckpt
#https://civitai.com/api/download/models/3433
#  out=Stable-diffusion/anythingV3Inpainting_1-inpainting.ckpt
#https://civitai.com/api/download/models/57618
#  out=Stable-diffusion/CounterfeitV30_v30.safetensors
# https://civitai.com/api/download/models/1450
#  out=Stable-diffusion/elldrethsLucidMix_v10.safetensors
#https://civitai.com/api/download/models/1224
#  out=Stable-diffusion/f222_v1.ckpt
#https://huggingface.co/timbrooks/instruct-pix2pix/resolve/main/instruct-pix2pix-00-22000.ckpt
#  out=Stable-diffusion/instruct-pix2pix-00-22000.ckpt
#https://civitai.com/api/download/models/64094
#  out=Stable-diffusion/neverendingDreamNED_v122BakedVae.safetensors
#https://civitai.com/api/download/models/48
#  out=Stable-diffusion/papercut_v1.ckpt
#https://civitai.com/api/download/models/4132
#  out=Stable-diffusion/roboeticsMix_rmix01Ckpt.ckpt
#
#https://huggingface.co/nousr/robo-diffusion/resolve/main/models/robo-diffusion-v1.ckpt
#  out=Stable-diffusion/robo-diffusion-v1.ckpt
#https://civitai.com/api/download/models/1192
#  out=Stable-diffusion/SamDoesArt-V3.ckpt
#https://civitai.com/api/download/models/1213
#  out=Stable-diffusion/samDoesSexyBlend_safetensor.safetensors
#https://civitai.com/api/download/models/1259
#  out=Stable-diffusion/theAllySMix_v10.ckpt
#https://civitai.com/api/download/models/23690
#  out=Stable-diffusion/vinteprotogenmix_V20.safetensors
#https://civitai.com/api/download/models/110021
#  out=Stable-diffusion/dreamshaper_7-inpainting.safetensors