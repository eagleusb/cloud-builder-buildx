# syntax=docker/dockerfile:latest
FROM alpine:latest as build

ENV BUILDX_VERS=${BUILDX_VERS:-v0.5.1}
ENV BUILDX_ARCH=${BUILDX_ARCH:-amd64}
ENV BUILDX_URL=https://github.com/docker/buildx/releases/download/${BUILDX_VERS}}/buildx-${BUILDX_VERS}.linux-${BUILDX_ARCH}

WORKDIR /workspace

RUN apk add --no-cache curl
RUN curl -Lo docker-buildx ${BUILDX_URL}


FROM docker:20.10 as run

LABEL org.label-schema.name="cloud-builder-buildx" \
  org.label-schema.description="cloud builder with docker buildx" \
  org.label-schema.vcs-ref="latest" \
  org.label-schema.vcs-url="https://github.com/eagleusb/cloud-builder-buildx" \
  org.label-schema.schema-version="1.0"

USER root

WORKDIR /${USER}/.docker/cli-plugins

COPY --from=build /workspace/docker-buildx .

RUN chmod +x docker-buildx

ENTRYPOINT ["/usr/bin/docker"]
CMD []
HEALTHCHECK NONE
