FROM alpine as build

RUN apk add --no-cache --virtual cudd-build-dependencies \
    git \
    build-base \
    doxygen \
    graphviz

ENV CUDD_REVISION=release
RUN git clone --depth 1 --branch ${CUDD_REVISION} https://github.com/ivmai/cudd.git /cudd

WORKDIR /cudd
RUN ./configure --prefix=/opt/cudd/
RUN make
RUN make install

