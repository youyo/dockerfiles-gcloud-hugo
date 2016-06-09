FROM google/cloud-sdk:latest
MAINTAINER youyo

ENV GO_VERSION 1.6.2
ENV GOPATH $HOME
ENV PATH $PATH:/usr/local/go/bin:$GOPATH/bin

RUN apt-get install -y git && \
wget https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz && \
tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz && \
/usr/local/go/bin/go get -v github.com/spf13/hugo
