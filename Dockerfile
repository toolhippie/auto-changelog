FROM ghcr.io/dockhippie/alpine:3.23@sha256:0c390b9f9e8a5a78f0fd573548d2a13e035893de9ed1342ebcb7d33e02a912c2
ENTRYPOINT [""]

# renovate: datasource=npm depName=auto-changelog
ENV AUTO_CHANGELOG_VERSION=2.7.0

RUN apk update && \
  apk upgrade && \
  apk add nodejs npm git && \
  npm install --global \
    auto-changelog@${AUTO_CHANGELOG_VERSION} && \
  rm -rf /var/cache/apk/*
