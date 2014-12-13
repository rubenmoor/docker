# rubenmoor/ghc

FROM rubenmoor/ghc-base

MAINTAINER Ruben Moor <ruben.moor@gmail.com>

ENV TMPINSTALLDIR /root/tmp
RUN mkdir -p $TMPINSTALLDIR

# edit versions here
#
# see http://www.haskell.org/cabal/download.html for matching versions of
# ghc and cabal-install
#
ENV GHC_VERSION 7.8.3

# ghc

ENV GHC_TARFILENAME ghc-${GHC_VERSION}-x86_64-unknown-linux-deb7.tar.bz2
ENV GHC_DOWNLOADDIR $TMPINSTALLDIR/ghc-$GHC_VERSION

RUN curl https://downloads.haskell.org/~ghc/$GHC_VERSION/$GHC_TARFILENAME \
    | tar xjC $TMPINSTALLDIR
RUN cd $GHC_DOWNLOADDIR && \
    ./configure && \
    make install

# edit versions here
#
# see http://www.haskell.org/cabal/download.html for matching versions of
# ghc and cabal-install
#
# cabal install (including cabal lib)
#
ENV CABINST_VERSION 1.20.0.3

# by default cabal-install installs vanilla, profile and shared libraries
# this is prevented by the next line
ENV EXTRA_CONFIGURE_OPTS ""

ENV CABINST_TARFILENAME cabal-install-${CABINST_VERSION}.tar.gz
ENV CABINST_DOWNLOADDIR $TMPINSTALLDIR/cabal-install-$CABINST_VERSION

RUN curl https://www.haskell.org/cabal/release/cabal-install-${CABINST_VERSION}/cabal-install-${CABINST_VERSION}.tar.gz \
    | tar xzC $TMPINSTALLDIR
RUN cd $CABINST_DOWNLOADDIR && \
    ./bootstrap.sh

# delete tmp files

RUN rm -rf $TMPINSTALLDIR

# set path
ENV PATH /root/.cabal/bin:$PATH

WORKDIR /root
