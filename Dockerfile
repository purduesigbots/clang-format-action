FROM ubuntu:latest

RUN bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
RUN apt-get install clang-format

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
