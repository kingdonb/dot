#!/usr/bin/env bash

apk add --no-cache git make musl-dev go

# Configure Go
export GOROOT=/usr/lib/go
export GOPATH=/go
export PATH=/go/bin:$PATH

mkdir -p ${GOPATH}/src ${GOPATH}/bin

# Install Glide
#RUN go get -u github.com/Masterminds/glide/...

#WORKDIR $GOPATH

#CMD ["make"]
# source: https://stackoverflow.com/a/53405005/661659

go get golang.org/dl/go1.15.1
go1.15.1 download
