# rubenmoor/hakyll-ri

FROM rubenmoor/hakyll

MAINTAINER Ruben Moor <ruben.moor@gmail.com>

ENV PROJECT_NAME rakyll
ENV GITREPO_PATH https://github.com/rubenmoor/${PROJECT_NAME}.git

ENV WEBDIR /root/web

RUN mkdir -p $WEBDIR

ENV SRCDIR /root/src

RUN mkdir -p $SRCDIR

RUN cd $SRCDIR && \
    git clone $GITREPO_PATH .

RUN cd $SRCDIR && \
    cabal run build

RUN cp -r $SRCDIR/_site/* $WEBDIR
