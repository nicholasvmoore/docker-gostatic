FROM centos

EXPOSE 80
VOLUME /data

ADD webserver.go /webserver.go

ENTRYPOINT ["/webserver"]

RUN yum -y install golang;\
    go build /webserver.go;\
    yum -y remove mpfr cpp libmpc kernel-headers glibc-headers glibc-devel gcc golang-src golang-pkg-linux-amd64 golang golang-pkg-bin-linux-amd64;\
    yum clean all
