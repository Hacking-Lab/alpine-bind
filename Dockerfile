FROM hackinglab/alpine-base:3.2
MAINTAINER Ivan Buetler <ivan.buetler@compass-security.com>

# Add the files
ADD root /

RUN apk --update upgrade && \
    apk add --update bind && \
    rm -rf /var/cache/apk/*

RUN apk add --no-cache --update bind \
        openssl && \
	rm -rf /var/cache/apk/* && \
	chown -R named:named /var/bind /var/lib/bind /var/run/named /var/log/named

# Expose the ports for bind
EXPOSE 53/tcp 53/udp
