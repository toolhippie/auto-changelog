FROM ghcr.io/dockhippie/alpine:3.22@sha256:555ec6b7c1727c1fc1be25d4e4cfb0e8bdab9ab1931a20365a873e5e21e4ff18
ENTRYPOINT [""]

# renovate: datasource=npm depName=auto-changelog
ENV AUTO_CHANGELOG_VERSION=2.5.0

RUN apk update && \
  apk upgrade && \
  apk add nodejs npm git && \
  npm install --global \
    auto-changelog@${AUTO_CHANGELOG_VERSION} && \
  rm -rf /var/cache/apk/*
