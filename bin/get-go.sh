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

version=1.15.1
go get golang.org/dl/go${version}
go${version} download
rm $HOME/sdk/go${version}/bin/go
cd $HOME/sdk/go${version}/src
CGO_ENABLED=0 ./all.bash
rm /$HOME/go/bin/go$version
