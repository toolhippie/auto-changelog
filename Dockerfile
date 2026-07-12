FROM ghcr.io/dockhippie/alpine:3.23@sha256:f797bd00305b8c250138cee4e3c9354cac69ea97bb03d76cf527a9200221ec95
ENTRYPOINT [""]

# renovate: datasource=npm depName=auto-changelog
ENV AUTO_CHANGELOG_VERSION=2.6.0

RUN apk update && \
  apk upgrade && \
  apk add nodejs npm git && \
  npm install --global \
    auto-changelog@${AUTO_CHANGELOG_VERSION} && \
  rm -rf /var/cache/apk/*
