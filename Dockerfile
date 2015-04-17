FROM ubuntu:latest
MAINTAINER Helmut Patay <helmut.patay@scandio.de>

RUN apt-get update && apt-get install -y \
  rsync

VOLUME /source
VOLUME /target

CMD rsync -aHv --delete /source/ /target/
