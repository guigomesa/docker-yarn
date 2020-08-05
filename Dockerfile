FROM node:10.14.2-alpine
LABEL maintainer="Guilherme Almeida <guigomesa@gmail.com>"

LABEL description="Yarn enviroment to run task like lint etc"


RUN apk add yarn