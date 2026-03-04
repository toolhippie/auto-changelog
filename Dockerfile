FROM ghcr.io/dockhippie/alpine:3.23@sha256:9d02517b6423d07d763d4eff86f19dc0d329791380e946438822137c9244da30
ENTRYPOINT [""]

# renovate: datasource=npm depName=auto-changelog
ENV AUTO_CHANGELOG_VERSION=2.5.0

RUN apk update && \
  apk upgrade && \
  apk add nodejs npm git && \
  npm install --global \
    auto-changelog@${AUTO_CHANGELOG_VERSION} && \
  rm -rf /var/cache/apk/*
