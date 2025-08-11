FROM docker.io/library/alpine:3.22.1@sha256:4bcff63911fcb4448bd4fdacec207030997caf25e9bea4045fa6c8c44de311d1

LABEL org.opencontainers.image.authors="James D. Marble <jdmarble@jdmarble.com>"
LABEL org.opencontainers.image.source="https://github.com/jdmarble/container-transmission"
LABEL org.opencontainers.image.version="4.0.6-r4"

RUN apk --no-cache add \
  transmission-daemon=4.0.6-r4

VOLUME /config /download

# "RPC" (web UI)
EXPOSE 9091/TCP
# incoming peers
EXPOSE 51413/TCP

CMD ["transmission-daemon", "--foreground", "--config-dir=/config", "--download-dir=/download"]
