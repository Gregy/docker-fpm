FROM debian:jessie
MAINTAINER Petr Gregor <docker@gregy.cz>

RUN apt-get update \
	&& apt-get install -y ruby-dev gcc make ruby \
	&& rm -rf /var/lib/apt/lists/*

RUN gem install fpm

CMD [ "fpm" ]
