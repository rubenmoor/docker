# rubenmoor/warp

FROM rubenmoor/ghc

MAINTAINER Ruben Moor <ruben.moor@gmail.com>

ENV ANTON_TAG v1.0
ENV ANTON_BINARY anton
ENV GITREPO_PATH rmoor@mdrexl.webfactional.com:/home/rmoor/git_repos/anton

RUN apt-get update && apt-get install -qy \
    git

ENV WEBDIR /root/web

RUN mkdir -p WEBDIR
RUN git archive --format=tar --remote=$GITREPO_PATH $ANTON_TAG |
    (cd $WEBDIR && tar -xf -)
RUN cd $WEBDIR && \
    cabal install

EXPOSE 3000

CMD anton
