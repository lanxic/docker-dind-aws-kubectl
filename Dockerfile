# Use an intermediate image to clone the repo
FROM docker:24.0.7-dind
LABEL maintainer="Alex Manroe <lanxic[at]gmail.com>"

RUN apk --no-cache add python3 py3-pip curl git wget

# install awscli from pip
RUN  pip3 install --upgrade pip \
  && pip3 install --no-cache-dir awscli

# install kubectl
RUN curl -LO https://dl.k8s.io/release/v1.28.4/bin/linux/amd64/kubectl
RUN chmod u+x kubectl && mv kubectl /bin/kubectl