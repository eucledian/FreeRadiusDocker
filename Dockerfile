FROM alpine:latest
LABEL authors="tuffkmulhall@gmail.com, info@eucledian.com"

RUN apk update && apk upgrade && \
  apk add --update freeradius freeradius-sqlite freeradius-radclient freeradius-ldap sqlite openssl openssl-dev &&\
  mkdir -p /var/run/radiusd &&\
  chgrp radius  /var/run/radiusd && \
  chmod g+rwx /var/run/radiusd && \
  rm /var/cache/apk/*


  EXPOSE 1812/udp 1812/tcp 1813/udp 1813/udp 1814/udp 1814/tcp 18120

  ENTRYPOINT ["radiusd", "-f"]
