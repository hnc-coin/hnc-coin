FROM debian:stretch
LABEL maintainer="HellenicCoin Developers <dev@helleniccoin.org>"
LABEL description="Dockerised HellenicCoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
