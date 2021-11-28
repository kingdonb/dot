# source $HOME/.bash_aliases

# echo 'loading .profile'
source $HOME/.bash_git
GIT_PS1_SHOWUPSTREAM="verbose"
GIT_PS1_SHOWDIRTYSTATE=true
PS1=':\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

if test -d $HOME/.local/bin; then
  export PATH="$PATH:$HOME/.local/bin"
fi

if test -d $HOME/.arkade/bin/; then
  export PATH=$PATH:$HOME/.arkade/bin/
fi

if test -d $HOME/.porter; then
  export PATH=$PATH:~/.porter
fi

if test -d $HOME/.linkerd2/bin; then
  export PATH=$PATH:~/.linkerd2/bin
fi

if test -d $HOME/bin; then
  export PATH="$PATH:$HOME/bin"
fi

if test -d /usr/local/kubebuilder/bin; then
  export PATH=$PATH:/usr/local/kubebuilder/bin
fi

if test -d $HOME/sdk/go; then
  export GOROOT=$HOME/sdk/go
  if test -d $HOME/sdk/go/bin; then
    export PATH="$PATH:$HOME/sdk/go/bin"
  fi
fi

if test -d $HOME/go; then
  if test -d $HOME/go/bin; then
  # export GOBIN=$HOME/go/bin
    export PATH="$PATH:$HOME/go/bin"
  fi
# if test -n "$GOPATH" && test -d $GOPATH/bin; then
#   export PATH=$GOPATH/bin:$PATH
# fi
fi

# Add RVM to PATH for scripting
# if test -d "$HOME/.rvm/bin"; then
#   export PATH="$PATH:$HOME/.rvm/bin"
# fi

export FLUX_FORWARD_NAMESPACE=flux
export GPG_TTY=$(tty) # if GPG signatures are needed, use TTY to ask for passphrase
export PATH="$PATH:${KREW_ROOT:-$HOME/.krew}/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
