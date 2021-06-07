#!/usr/bin/env bash
if test -d /Users/kingdon; then
ROOT=/Users/kingdon
elif test -d /Users/kingdonb; then
ROOT=/Users/kingdonb
elif test -d /home/kingdon; then
ROOT=/home/kingdon
else
ROOT=/
fi

set -euo pipefail

#if test -f /etc/alpine-release ; then
#	apk add --no-cache git make musl-dev go
#fi

# For base go from homebrew Cellar, on MacOS
#GOCELLAR=`ls -1 -d /usr/local/opt/go@*/libexec|sort -r|head -1`

# Configure Go
if [ ! -z "${GOROOT:-}" ]; then
  # goroot is already set...
  echo "GOROOT=$GOROOT"
elif test -d /usr/local/opt/go/libexec ; then
	export GOROOT=/usr/local/opt/go/libexec
elif test -d $HOME/sdk/go ; then
	export GOROOT=$HOME/sdk/go
elif test -d /usr/lib/golang ; then
	export GOROOT=/usr/lib/golang
elif test -d /usr/lib/go ; then
	export GOROOT=/usr/lib/go
elif test -d /usr/local/go ; then
	export GOROOT=/usr/local/go
#elif test -d $GOCELLAR/ ; then
#	export GOROOT=$GOCELLAR
else
	echo "Install a golang package from your package manager first (exiting)"
	exit 1
fi
export GOPATH=$ROOT/go
export PATH=$ROOT/go/bin:$PATH
# export GOPATH=/Users/kingdon/go
# export PATH=/Users/kingdon/go/bin:$PATH

mkdir -p ${GOPATH}/src ${GOPATH}/bin

# Install Glide
#RUN go get -u github.com/Masterminds/glide/...

#WORKDIR $GOPATH

#CMD ["make"]
# source: https://stackoverflow.com/a/53405005/661659

version=1.16.4
echo "Installing go $version (with CGO_ENABLED=0)"

set -x

go get golang.org/dl/go${version}
go${version} download
rm $HOME/sdk/go${version}/bin/go
cd $HOME/sdk/go${version}/src
CGO_ENABLED=0 ./all.bash
rm $HOME/go/bin/go$version
ln -sf $HOME/sdk/go${version} $HOME/sdk/go
