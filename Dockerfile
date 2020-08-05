FROM node:10.14.2-jessie-slim
LABEL maintainer="Guilherme Almeida <guigomesa@gmail.com>"

LABEL description="Yarn enviroment to run task like lint etc"

RUN apt-key adv --fetch-keys http://dl.yarnpkg.com/debian/pubkey.gpg
RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list


RUN apt-get update && apt-get install -y \
	curl \
	libxml2-dev \
	libxslt-dev \
	libcurl4-openssl-dev \
	libreadline6-dev \
	libssl-dev \
	patch \
	build-essential \
	zlib1g-dev \
	openssh-server \
	libyaml-dev \
	libicu-dev \
	rsync \
	libmysqlclient-dev \
	yarn \
    git \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

