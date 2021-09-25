# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

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

if test -d $HOME/.porter; then
  export PATH=$PATH:~/.porter
fi

if test -d $HOME/.linkerd2/bin; then
  export PATH=$PATH:~/.linkerd2/bin
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if test -d $HOME/bin; then
  export PATH="$PATH:$HOME/bin"
fi

if test -d /usr/local/kubebuilder/bin; then
  export PATH=$PATH:/usr/local/kubebuilder/bin
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

export GPG_TTY=$(tty) # if GPG signatures are needed, use TTY to ask for passphrase
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
