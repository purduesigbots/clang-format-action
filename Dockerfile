FROM ubuntu:latest

RUN apt-get install clang-format

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
