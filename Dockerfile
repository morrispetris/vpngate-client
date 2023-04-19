FROM alpine:3.16

RUN apk --update add curl jq python3 openvpn privoxy runit
RUN python3 -m ensurepip

WORKDIR /app

COPY app /app
COPY vpngate-client /app

EXPOSE 8080

CMD ["runsvdir", "/app"]
