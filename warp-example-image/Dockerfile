# rubenmoor/warp

FROM rubenmoor/ghc

MAINTAINER Ruben Moor <ruben.moor@gmail.com>

ENV GITREPO_TAG master
ENV WEBSERVER_BINARY warp-example
ENV GITREPO_PATH https://github.com/rubenmoor/warp-example.git

RUN apt-get update && apt-get install -qy \
    git

ENV WEBDIR /root/web

RUN mkdir -p $WEBDIR

# workaround for "git archive": github does not support
ENV TMPDIR /root/tmp
RUN git clone --depth 1 $GITREPO_PATH $TMPDIR
RUN cd $TMPDIR && \
    git archive $GITREPO_TAG --format=tar \
    | (cd $WEBDIR && tar -xf -)
RUN rm -rf $TMPDIR

# this is the actual command "git archive"
# RUN git archive --format=tar --remote=$GITREPO_PATH $GITREPO_TAG \
#     | (cd $WEBDIR && tar -xf -)

RUN cabal update
RUN cd $WEBDIR && \
    cabal install

CMD $WEBSERVER_BINARY
