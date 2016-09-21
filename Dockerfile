FROM babim/debianbase

ENV TS3_VERSION 3.0.13.4
ENV DEBIAN_FRONTEND noninteractive

RUN wget -O /tmp/teamspeak-server.tar.bz2 http://dl.4players.de/ts/releases/$TS3_VERSION/teamspeak3-server_linux_amd64-${TS3_VERSION}.tar.bz2 \
        && tar -xf /tmp/teamspeak-server.tar.bz2 -C /tmp \
        && rm /tmp/teamspeak-server.tar.bz2 \
        && mv /tmp/teamspeak3-server_linux-amd64 /teamspeak

ADD ./ts3server /ts3server
RUN chmod 755 /ts3server

EXPOSE 9987/udp
EXPOSE 10011
EXPOSE 30033

VOLUME ["/data"]

ENTRYPOINT ["/ts3server"]
CMD ["logpath=/data/logs/"]
