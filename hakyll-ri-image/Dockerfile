# rubenmoor/hakyll-ri

FROM rubenmoor/hakyll

MAINTAINER Ruben Moor <ruben.moor@gmail.com>

ENV PROJECT_NAME rakyll
ENV GITREPO_PATH https://github.com/rubenmoor/${PROJECT_NAME}.git

ENV WEBDIR /root/web

ENV SRCDIR /root/src

ENV GITREPO_DIR $SRCDIR/repo

RUN cd $GITREPO_DIR && \
    git clone $GITREPO_PATH $PROJECT_NAME

RUN cp -r $GITREPO_DIR/$PROJECT_NAME/_site/* $WEBDIR
