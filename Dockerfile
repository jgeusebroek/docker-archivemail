FROM debian:buster
MAINTAINER Jeroen Geusebroek <me@jeroengeusebroek.nl>

ENV APTLIST="archivemail"

RUN echo "force-unsafe-io" > /etc/dpkg/dpkg.cfg.d/02apt-speedup &&\
    echo "Acquire::http {No-Cache=True;};" > /etc/apt/apt.conf.d/no-cache && \
    apt -q update && \
    apt -qy dist-upgrade && \
    apt install -qy $APTLIST && \
    \
    # Cleanup
    apt -y autoremove && \
    apt -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

ENTRYPOINT ["/usr/bin/archivemail"]