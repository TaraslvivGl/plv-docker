FROM alpine:latest

WORKDIR /dev/client
RUN apk update && apk add --no-cache bash
RUN apk add --no-cache netcat-openbsd

CMD ["./client.sh"]
