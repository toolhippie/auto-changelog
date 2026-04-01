FROM ghcr.io/dockhippie/alpine:3.23@sha256:0d8b80804c02a0f215e5b26f663a643a98e7789c83ec4a6c8220a861642d5b4c
ENTRYPOINT [""]

# renovate: datasource=npm depName=auto-changelog
ENV AUTO_CHANGELOG_VERSION=2.5.0

RUN apk update && \
  apk upgrade && \
  apk add nodejs npm git && \
  npm install --global \
    auto-changelog@${AUTO_CHANGELOG_VERSION} && \
  rm -rf /var/cache/apk/*
