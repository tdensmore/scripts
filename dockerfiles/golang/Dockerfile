FROM ubuntu:18.10

ARG GO_VERSION=go1.10.3.linux-amd64.tar.gz 

# Install
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y curl git unzip vim && \
  rm -rf /var/lib/apt/lists/* && \
  curl -LO https://dl.google.com/go/$GO_VERSION && \
  tar -C /usr/local -xzf $GO_VERSION && \
  mkdir /go /go/src /go/bin && \
  rm $GO_VERSION 

ENV PATH="/usr/local/go/bin:${PATH}"

# Add files.
#ADD root/.bashrc /root/.bashrc

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /go

# Define default command.
CMD ["bash"]
