FROM dimitriss/cross-compiler:base


RUN apt-get update && apt-get -y install mingw-w64

ENV CROSS_TRIPLE i686-w64-mingw32
ENV CROSS_ROOT /usr/${CROSS_TRIPLE}
ENV PATH ${PATH}:${CROSS_ROOT}/bin
ENV LD_LIBRARY_PATH ${CROSS_ROOT}/lib:${LD_LIBRARY_PATH}

RUN cd /usr/bin && \
    ln -s ${CROSS_TRIPLE}-gcc-7 ${CROSS_TRIPLE}-cc
