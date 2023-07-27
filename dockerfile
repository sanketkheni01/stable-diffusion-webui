FROM python:3.10-bullseye

RUN apt-get update && apt-get install -y git ffmpeg libsm6 libxext6 parallel aria2 libgoogle-perftools-dev

# Copy everything
COPY . /app/stable-diffusion-webui

WORKDIR /app/stable-diffusion-webui

RUN chmod +x ./clone.sh
RUN ./clone.sh taming-transformers https://github.com/CompVis/taming-transformers.git 24268930bf1dce879235a7fddd0b2355b84d7ea6 \
  && rm -rf data assets **/*.ipynb

RUN ./clone.sh stable-diffusion-stability-ai https://github.com/Stability-AI/stablediffusion.git 47b6b607fdd31875c9279cd2f4f16b92e4ea958e \
  && rm -rf assets data/**/*.png data/**/*.jpg data/**/*.gif

RUN ./clone.sh CodeFormer https://github.com/sczhou/CodeFormer.git c5b4593074ba6214284d6acd5f1719b6c5d739af \
  && rm -rf assets inputs

RUN ./clone.sh BLIP https://github.com/salesforce/BLIP.git 48211a1594f1321b00f14c9f7a5b4813144b2fb9
RUN ./clone.sh k-diffusion https://github.com/crowsonkb/k-diffusion.git 5b3af030dd83e0297272d861c19477735d0317ec
RUN ./clone.sh clip-interrogator https://github.com/pharmapsychotic/clip-interrogator 2486589f24165c8e3b303f84e9dbbea318df83e8

RUN pip install -r ./repositories/CodeFormer/requirements.txt

RUN chmod +x ./download.sh
RUN ./download.sh

RUN aria2c -x 5 --dir / --out /xformers-0.0.21.dev544-cp310-cp310-manylinux2014_x86_64.whl 'https://github.com/AbdBarho/stable-diffusion-webui-docker/releases/download/6.0.0/xformers-0.0.21.dev544-cp310-cp310-manylinux2014_x86_64-pytorch201.whl'
RUN pip install /xformers-0.0.21.dev544-cp310-cp310-manylinux2014_x86_64.whl

ENV LD_PRELOAD=libtcmalloc.so
# COPY webui.sh /app/stable-diffusion-webui/webui.sh

# USER daemon

EXPOSE 8080

RUN chmod +x ./webui.sh

ENTRYPOINT [ "./webui.sh" ]
