# rubenmoor/ghcjs-base

FROM rubenmoor/ghc

MAINTAINER Ruben Moor <ruben.moor@gmail.com>

RUN apt-get update && apt-get install -qy \
        nodejs

ENV TMPINSTALLDIR /root/tmp
RUN mkdir -p $TMPINSTALLDIR

################################################################################
#
# install an updated version of Cabal and cabal-install with ghcjs support
#

ENV GHCJS_CABAL_GIT https://github.com/ghcjs/cabal.git
ENV CABAL_DIR $TMPINSTALLDIR/cabal
ENV GHCJS_BRANCH ghcjs

RUN git clone $GHCJS_CABAL_GIT $CABAL_DIR

RUN cd $CABAL_DIR && \
    git checkout $GHCJS_BRANCH && \
    cabal install ./Cabal ./cabal-install

# install cabal packages
ENV GHCJS_GIT https://github.com/ghcjs/ghcjs.git
ENV GHCJS_DIR $TMPINSTALLDIR/ghcjs
RUN git clone $GHCJS_GIT $GHCJS_DIR

#   ghcjs-prim
ENV GHCJSPRIM_GIT https://github.com/ghcjs/ghcjs-prim.git
ENV GHCJSPRIM_DIR $TMPINSTALLDIR/ghcjsprim
RUN git clone $GHCJSPRIM_GIT $GHCJSPRIM_DIR

RUN cabal update && \
    cabal install $GHCJS_DIR $GHCJSPRIM_DIR

RUN rm -rf $TMPINSTALLDIR

RUN ghcjs-boot --dev --with-node nodejs

WORKDIR /root
