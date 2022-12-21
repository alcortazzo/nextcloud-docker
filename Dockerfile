FROM nextcloud:24-apache as nc

RUN set -ex; \
    apt-get update; \
    apt-get install -y \
    ffmpeg; \
    rm -rf /var/lib/apt/lists/*

ENV NEXTCLOUD_UPDATE=1
