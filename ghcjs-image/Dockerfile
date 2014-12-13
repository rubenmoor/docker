# rubenmoor/ghcjs

FROM rubenmoor/ghc

MAINTAINER Ruben Moor <ruben.moor@gmail.com>

ENV TMPINSTALLDIR /root/tmp
RUN mkdir -p $TMPINSTALLDIR

ENV GHCJS_CABAL_GIT https://github.com/ghcjs/cabal.git
ENV CABAL_DIR $TMPINSTALLDIR/cabal
ENV GHCJS_BRANCH ghcjs

RUN cd $TMPINSTALLDIR && \
    git clone $GHCJS_CABAL_GIT $CABAL_DIR

RUN cd $CABAL_DIR && \
    git checkout $GHCJS_BRANCH && \
    cabal install ./Cabal ./cabal-install

RUN rm -rf $TMPINSTALLDIR

WORKDIR /root
