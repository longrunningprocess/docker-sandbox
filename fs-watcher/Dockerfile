FROM alpine

RUN mkdir -p /data/dropzone

COPY watcher /data/
WORKDIR /data

RUN chmod +x watcher

# https://wiki.alpinelinux.org/wiki/Inotifyd
CMD inotifyd /data/watcher /data/dropzone:n
