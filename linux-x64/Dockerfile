FROM dimitriss/cross-compiler:base

ENV CROSS_TRIPLE x86_64-linux-gnu
ENV CROSS_ROOT /usr/${CROSS_TRIPLE}
ENV PATH ${PATH}:${CROSS_ROOT}/bin
ENV LD_LIBRARY_PATH ${CROSS_ROOT}/lib:${LD_LIBRARY_PATH}

RUN mkdir -p ${CROSS_ROOT} && \
    cd /usr/bin && \
    ln -sf ${CROSS_TRIPLE}-gcc-6 ${CROSS_TRIPLE}-cc && \
    ln -sf ${CROSS_TRIPLE}-g++-6 ${CROSS_TRIPLE}-c++
