FROM alpine:3.13

RUN apk add clang python3 git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
