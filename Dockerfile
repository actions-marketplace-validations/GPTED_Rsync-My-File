FROM alpine:latest

RUN apk --no-cache --update add openssh bash rsync

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
