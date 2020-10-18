source $HOME/.bash_aliases

source $HOME/.bash_git
GIT_PS1_SHOWUPSTREAM="verbose"
GIT_PS1_SHOWDIRTYSTATE=true
PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

if test -d $HOME/.local/bin; then
  export PATH="$PATH:$HOME/.local/bin"
fi

if test -d $HOME/.arkade/bin/; then
  export PATH=$PATH:$HOME/.arkade/bin/
fi

if test -d $HOME/bin; then
  export PATH="$PATH:$HOME/bin"
fi

if test -d /go || test -d /usr/local/go; then
  if test -d /go; then
    export GOPATH=/go
  elif test -d /usr/local/go; then
    export GOPATH=/usr/local/go
  fi
  if test -d $HOME/go/bin; then
    export GOBIN=$HOME/go/bin
    export PATH="$PATH:$HOME/go/bin"
  fi
  if test -d $GOPATH/bin; then
    export PATH=$GOPATH/bin:$PATH
  fi
fi
if test -d $HOME/sdk/go1.15.2; then
  export GOROOT=$HOME/sdk/go1.15.2
  if test -d $GOROOT/bin; then
    export PATH=$GOROOT/bin:$PATH
  fi
fi

export CGO_ENABLED=0

# Add asdf shell functions if asdf is installed (by homebrew)
if test -f /usr/local/opt/asdf/asdf.sh; then
  source /usr/local/opt/asdf/asdf.sh
fi

# Add RVM to PATH for scripting
if test -d "$HOME/.rvm/bin"; then
  export PATH="$PATH:$HOME/.rvm/bin"
fi

# Prepend cargo bin for 'just', other rust utilities, etc.
if test -d "$HOME/.cargo/bin"; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi

## Uncomment eval below to connect Docker CLI to engine inside minikube VM
## docker-env: minikube (depends on asdf above)
# eval $(minikube docker-env)

#
#
#

export GPG_TTY=$(tty) # if GPG signatures are needed, use TTY to ask for passphrase
export EDITOR=vim

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
