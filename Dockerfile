FROM ubuntu:latest

RUN apt update
RUN apt install wget
RUN bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"

RUN apt install clang-format

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
