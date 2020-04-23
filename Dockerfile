ARG ARCH=""

FROM ${ARCH}/alpine


# Install python
 RUN apk add --no-cache --update g++ gcc libgcc libstdc++ linux-headers make python

# Setup node envs
RUN echo "Running from $ARCH and Hello world from $ARCH"

