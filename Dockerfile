FROM ubuntu:focal

RUN apt-get install clang-format-10

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
