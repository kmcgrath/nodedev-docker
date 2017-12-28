FROM ubuntu:xenial

# vim and janus
RUN apt-get update && apt-get install -y \
  vim \
  rake \
  curl \
  git \
  bash \
  && curl -L https://bit.ly/janus-bootstrap | bash

# NVM
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash \
    && bash -c ". /root/.nvm/nvm.sh \
      && nvm install node \
      && nvm install v8 \
      && nvm install v6 \
      && nvm install v4"

ADD scripts/entry.sh /scripts/entry.sh

ENTRYPOINT ["/scripts/entry.sh"]

CMD ["bash"]
