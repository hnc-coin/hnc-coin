#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-helleniccoinpay/helleniccoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/helleniccoind docker/bin/
cp $BUILD_DIR/src/helleniccoin-cli docker/bin/
cp $BUILD_DIR/src/helleniccoin-tx docker/bin/
strip docker/bin/helleniccoind
strip docker/bin/helleniccoin-cli
strip docker/bin/helleniccoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
