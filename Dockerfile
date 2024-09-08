FROM ubuntu:latest
ARG url=https://archive.chirpmyradio.com/chirp_next/next-20240905/chirp-20240905-py3-none-any.whl

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y python3-wxgtk4.0 pipx 

RUN pipx install --system-site-packages $url
RUN pipx ensurepath

ENTRYPOINT $HOME/.local/bin/chirp
