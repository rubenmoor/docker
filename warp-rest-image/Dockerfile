# rubenmoor/warp-rest

FROM rubenmoor/ghc

MAINTAINER Ruben Moor <ruben.moor@gmail.com>

ENV GITREPO_TAG master
ENV WEBSERVER_BINARY rest-example-wai
ENV GITREPO_PATH https://github.com/silkapp/rest.git

RUN apt-get update && apt-get install -qy \
    git

ENV WEBDIR /root/web

ENV TMPDIR /root/tmp

# git sparse checkout to get rest-example app only

ENV RESTEXAMPLE_DIR rest-example
ENV GITREPO_DIR $TMPDIR/repo

RUN git init $GITREPO_DIR
RUN cd $GITREPO_DIR && \
    git remote add -f origin $GITREPO_PATH && \
    git config core.sparsecheckout true && \
    echo $RESTEXAMPLE_DIR >> .git/info/sparse-checkout && \
    git pull --depth=1 origin master && \
    git archive $GITREPO_TAG --format=tar \
    | (cd $TMPDIR && tar -xf -)
RUN cd $TMPDIR && \
    mv $RESTEXAMPLE_DIR $WEBDIR

RUN rm -rf $TMPDIR

RUN cabal update
RUN cd $WEBDIR && \
    cabal install

CMD $WEBSERVER_BINARY