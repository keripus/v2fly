FROM v2fly/v2fly-core:latest

EXPOSE 37192
ENV UUID=''
WORKDIR /root

COPY etc /etc
COPY root /root
VOLUME [ "/etc/v2ray" ]
ENTRYPOINT ["./v2fly.sh"]
