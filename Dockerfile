FROM ubuntu:latest

RUN apt-get update

# install tzdata noninteractively to forestall getting
# stuck at the configuration step
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Indianapolis
RUN apt-get install -y tzdata

RUN apt-get install -y \
  git \
  lsb-release \
  wget \
  software-properties-common

RUN bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)" && \
  apt-get update && \
  apt-get install -y clang-format

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
