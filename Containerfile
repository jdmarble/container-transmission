FROM docker.io/library/alpine:3.20

LABEL org.opencontainers.image.authors="James D. Marble <jdmarble@jdmarble.com>"
LABEL org.opencontainers.image.source="https://github.com/jdmarble/container-transmission"
LABEL org.opencontainers.image.version="4.0.5-r2"

RUN apk --no-cache add \
  transmission-daemon=4.0.5-r2

VOLUME /config /download

# "RPC" (web UI)
EXPOSE 9091/TCP
# incoming peers
EXPOSE 51413/TCP

CMD ["transmission-daemon", "--foreground", "--config-dir=/config", "--download-dir=/download"]
