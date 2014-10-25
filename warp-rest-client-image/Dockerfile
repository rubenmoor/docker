# rubenmoor/warp-rest-client

FROM rubenmoor/ghc-base

MAINTAINER Ruben Moor <ruben.moor@gmail.com>

RUN apt-get update && apt-get install -q -y \
    libxml2-utils \
    python

ENV CLIENTSCRIPT_EXEC script.sh
ENV API_URL http://api:3000

ENV CLIENT_DIR /root/client

RUN mkdir -p $CLIENT_DIR
COPY $CLIENTSCRIPT_EXEC $CLIENT_DIR/$CLIENTSCRIPT_EXEC
CMD $CLIENT_DIR/$CLIENTSCRIPT_EXEC $API_URL
