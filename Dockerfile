FROM golang
MAINTAINER Sinan Gedik
RUN useradd -m -d /home/jenkins jenkins
RUN chown -R jenkins /go
RUN git config --system user.name jenkins && git config --system user.email jenkins@localhost 
VOLUME /go
USER jenkins
RUN go get -u github.com/Masterminds/glide
RUN go get github.com/mitchellh/gox