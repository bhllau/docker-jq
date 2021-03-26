FROM debian:buster-slim

USER root

ENV HOME=/home/jq

WORKDIR $HOME

RUN \
	apt-get -y update && \
	apt-get -y install curl && \
	apt-get -y clean && \
	mkdir -p "$HOME" && \
	cd "$HOME" && \
	curl -LO https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 && \
	mv ./jq-linux64 /usr/bin/jq && \
	chmod +x /usr/bin/jq && \
	jq --version && \
	chown -R 1001:0 "$HOME"

USER 1001

