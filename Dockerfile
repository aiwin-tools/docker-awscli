FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y python zip jq curl groff git gettext-base \
    && rm -rf /var/lib/apt/lists/*

RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "/tmp/get-pip.py" && \
  python /tmp/get-pip.py && \
  pip install awscli --ignore-installed six

CMD ["/usr/local/bin/aws"]
