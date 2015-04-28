FROM scratch

EXPOSE 80
VOLUME /data

ADD webserver /webserver

ENTRYPOINT ["/webserver"]
