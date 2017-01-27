FROM golang
MAINTAINER Sinan Gedik
RUN apt-get update && apt-get install libldap2-dev libsasl2-dev
RUN git config --system user.name jenkins && git config --system user.email jenkins@localhost 
RUN go get -u github.com/Masterminds/glide
RUN go get github.com/mitchellh/gox