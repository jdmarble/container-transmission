# [Container Transmission](https://github.com/jdmarble/container-transmission)

This packages the bittorrent client
[Transmission](https://github.com/transmission/transmission) into a simple
container image that can be run securely.

## How To Use

You can run a container from this image in Docker, Podman, or any container
runtime. I've included manifests as an example of how you can run it in
Kubernetes.

```sh
kubectl apply -k deploy
```
