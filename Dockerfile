ARG ARCH=""

FROM ${ARCH}/alpine

COPY /usr/bin/qemu-${ARCH}-static* /usr/bin/

# Install python
 RUN apk add --no-cache --update g++ gcc libgcc libstdc++ linux-headers make python

# Setup node envs
RUN echo "Hello world from ${ARCH}"

