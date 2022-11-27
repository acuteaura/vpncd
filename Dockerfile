FROM alpine:edge

ENV GOPATH=/go
ENV VPNC_IPSEC_GATEWAY=""
ENV VPNC_IPSEC_ID=""
ENV VPNC_IPSEC_SECRET=""
ENV VPNC_USERNAME=""
ENV VPNC_PASSWORD=""

RUN apk add vpnc go supervisor

RUN go install github.com/serjs/socks5-server@2ada16b7eb7ffc710488f2b7f0bdb4b9ba63371e

ADD supervisord.conf /etc/supervisord.conf

EXPOSE 1080

CMD ["supervisord"]