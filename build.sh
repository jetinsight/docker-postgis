#!/bin/bash
POSTGRES_VERSION=16
POSTGIS_VERSION=3.4

docker buildx build \
--push \
--platform linux/arm64/v8,linux/amd64 \
--tag ghcr.io/jetinsight/postgis:$POSTGRES_VERSION-$POSTGIS_VERSION-alpine \
-f $POSTGRES_VERSION-$POSTGIS_VERSION/alpine/Dockerfile \
$POSTGRES_VERSION-$POSTGIS_VERSION/alpine
