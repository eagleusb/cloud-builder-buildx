# cloud-builder-buildx

Google Cloud Build lightweight builder with [Docker buildx](https://github.com/docker/buildx)

## Quickstart

> Build

```bash
docker image build --pull --rm --tag cloud-builder-buildx .
```

> Run

```bash
docker container run -it -- cloud-builder-buildx builder version
github.com/docker/buildx v0.5.1 11057da37336192bfc57d81e02359ba7ba848e4a
```
