FROM ubuntu:xenial

# vim and janus
RUN apt-get update && apt-get install -y \
  vim \
  rake \
  curl \
  git \
  bash \
  jq \
  && curl -L https://bit.ly/janus-bootstrap | bash \
  && mkdir /code

# NVM
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash \
    && bash -c ". /root/.nvm/nvm.sh \
      && nvm install node \
      && nvm install v8 \
      && nvm install v6 \
      && nvm install v4"

ADD scripts/entry.sh /scripts/entry.sh

WORKDIR /code

ENTRYPOINT ["/scripts/entry.sh"]

CMD ["bash"]
