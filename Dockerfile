FROM ghcr.io/dockhippie/alpine:3.23@sha256:f07d501357a45f80b1c874224206284cde04a4fa8e7b8784dff9f7d6fa5360f1
ENTRYPOINT [""]

# renovate: datasource=npm depName=auto-changelog
ENV AUTO_CHANGELOG_VERSION=2.7.0

RUN apk update && \
  apk upgrade && \
  apk add nodejs npm git && \
  npm install --global \
    auto-changelog@${AUTO_CHANGELOG_VERSION} && \
  rm -rf /var/cache/apk/*
