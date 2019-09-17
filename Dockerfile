FROM alpine:3.7
MAINTAINER josemiguel.maldonado@aiwin.es

RUN apk --update --no-cache add \
    python3 \
    py2-pip \
    jq \
    bash \
    git \
    groff \
    less \
    mailcap \
    bash \
    && pip3 install --no-cache-dir awscli \
    && apk del py-pip \
    && rm -rf /var/cache/apk/* /root/.cache/pip/*

WORKDIR /root
VOLUME /root/.aws

ENTRYPOINT [ "aws" ]
CMD ["--version"]
