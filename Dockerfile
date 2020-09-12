FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  lsb-release \
  wget \
  software-properties-common

RUN bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)" && \
  apt-get update && \
  apt-get install -y clang-format

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
