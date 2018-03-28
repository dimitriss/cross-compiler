FROM dimitriss/cross-compiler:base

# Add the cross compiler sources
RUN dpkg --add-architecture armh

RUN apt-get update && apt-get -y install \
                        gcc-6-arm-linux-gnueabihf \
                        g++-6-arm-linux-gnueabihf \
			crossbuild-essential-armhf

ENV CROSS_TRIPLE arm-linux-gnueabihf
ENV CROSS_ROOT /usr/${CROSS_TRIPLE}
ENV PATH ${PATH}:${CROSS_ROOT}/bin
ENV LD_LIBRARY_PATH ${CROSS_ROOT}/lib:${LD_LIBRARY_PATH}

RUN cd /usr/bin && \
    ln -sf ${CROSS_TRIPLE}-gcc-6 ${CROSS_TRIPLE}-cc && \
    ln -sf ${CROSS_TRIPLE}-gcc-6 ${CROSS_TRIPLE}-gcc && \
    ln -sf ${CROSS_TRIPLE}-g++-6 ${CROSS_TRIPLE}-g++ && \
    ln -sf ${CROSS_TRIPLE}-g++-6 ${CROSS_TRIPLE}-c++
