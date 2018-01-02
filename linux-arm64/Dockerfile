FROM dimitriss/cross-compiler:base

# Add the cross compiler sources
RUN dpkg --add-architecture arm64

RUN apt-get update && apt-get -y install \
    gcc-7-aarch64-linux-gnu \
    g++-7-aarch64-linux-gnu \
    crossbuild-essential-arm64

ENV CROSS_TRIPLE aarch64-linux-gnu
ENV CROSS_ROOT /usr/${CROSS_TRIPLE}
ENV PATH ${PATH}:${CROSS_ROOT}/bin
ENV LD_LIBRARY_PATH ${CROSS_ROOT}/lib:${LD_LIBRARY_PATH}
ENV PKG_CONFIG_PATH ${CROSS_ROOT}/lib/pkgconfig:${PKG_CONFIG_PATH}

RUN cd /usr/bin && \
    ln -sf ${CROSS_TRIPLE}-gcc-7 ${CROSS_TRIPLE}-cc && \
    ln -sf ${CROSS_TRIPLE}-gcc-7 ${CROSS_TRIPLE}-gcc && \
    ln -sf ${CROSS_TRIPLE}-g++-7 ${CROSS_TRIPLE}-g++ && \
    ln -sf ${CROSS_TRIPLE}-g++-7 ${CROSS_TRIPLE}-c++
