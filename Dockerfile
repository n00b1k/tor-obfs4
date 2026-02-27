FROM debian:12.13-slim

LABEL maintainer="n00b1k"
LABEL version="1.0.7"

ENV TZ=UTC

RUN apt-get update && apt-get install -y \
    tor \
    obfs4proxy \
    ca-certificates \
    tzdata \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/lib/tor && chown -R debian-tor:debian-tor /var/lib/tor

COPY torrc /etc/tor/torrc

USER debian-tor

EXPOSE 9050 9051

CMD ["/usr/bin/tor", "-f", "/etc/tor/torrc"]
