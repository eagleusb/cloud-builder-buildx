# cloud-builder-buildx

Google Cloud Build lightweight builder with [Docker buildx](https://github.com/docker/buildx)

## Quickstart

> Build

```bash
docker image build --pull --rm --tag grumpycat/cloud-builder-buildx:latest .
```

> Run

```bash
docker container run -it -- grumpycat/cloud-builder-buildx:latest builder version
github.com/docker/buildx v0.5.1 11057da37336192bfc57d81e02359ba7ba848e4a
```
