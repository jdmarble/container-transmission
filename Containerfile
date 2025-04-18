FROM docker.io/library/alpine:3.21.3@sha256:a8560b36e8b8210634f77d9f7f9efd7ffa463e380b75e2e74aff4511df3ef88c

LABEL org.opencontainers.image.authors="James D. Marble <jdmarble@jdmarble.com>"
LABEL org.opencontainers.image.source="https://github.com/jdmarble/container-transmission"
LABEL org.opencontainers.image.version="4.0.6-r0"

RUN apk --no-cache add \
  transmission-daemon=4.0.6-r0

VOLUME /config /download

# "RPC" (web UI)
EXPOSE 9091/TCP
# incoming peers
EXPOSE 51413/TCP

CMD ["transmission-daemon", "--foreground", "--config-dir=/config", "--download-dir=/download"]
