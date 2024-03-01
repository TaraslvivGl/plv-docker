FROM alpine:latest

WORKDIR /dev/server

RUN apk update && apk add --no-cache bash
RUN apk add --no-cache netcat-openbsd

CMD ["nc","-l","1333"]
