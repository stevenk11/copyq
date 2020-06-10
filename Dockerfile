FROM debian:buster-slim

RUN sed -i -e "s/deb.debian/ftp.hk.debian/g" /etc/apt/sources.list \
	&& apt-get update && apt-get install -y --no-install-recommends \
	fonts-noto-cjk \
	copyq \
	copyq-plugins \
	&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["copyq"]
