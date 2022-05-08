ARG BUILD_FROM

FROM $BUILD_FROM

ARG BUILD_ARCH
ARG FRP_VERSION

ENV LANG C.UTF-8

WORKDIR /usr/src

# Copy data for add-on
COPY data/run.sh /
COPY data/frpc /usr/src/

RUN chmod a+x /run.sh
RUN chmod a+x /usr/src/frpc

CMD [ "/run.sh" ]
