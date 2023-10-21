# source $HOME/.bash_aliases

# echo 'loading .profile'
source $HOME/.bash_git
GIT_PS1_SHOWUPSTREAM="verbose"
GIT_PS1_SHOWDIRTYSTATE=true
PS1=':\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# echo $PATH
# echo 'adding homebrew'
eval "$(/opt/homebrew/bin/brew shellenv)"
# echo $PATH

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
[[ -r "/opt/homebrew/etc/bash_completion.d/git-completion.bash" ]] && . "/opt/homebrew/etc/bash_completion.d/git-completion.bash"

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
  export PATH="$HOME/bin:$PATH"
fi

if test -d $HOME/go; then
  if test -d $HOME/go/bin; then
  # export GOBIN=$HOME/go/bin
    export PATH="$HOME/go/bin:$PATH"
  fi
# if test -n "$GOPATH" && test -d $GOPATH/bin; then
#   export PATH=$GOPATH/bin:$PATH
# fi
fi

if test -d /usr/local/kubebuilder/bin; then
  export PATH=$PATH:/usr/local/kubebuilder/bin
fi

# Add RVM to PATH for scripting
# if test -d "$HOME/.rvm/bin"; then
#   export PATH="$PATH:$HOME/.rvm/bin"
# fi

export FLUX_FORWARD_NAMESPACE=flux
export GPG_TTY=$(tty) # if GPG signatures are needed, use TTY to ask for passphrase
export PATH="$PATH:${KREW_ROOT:-$HOME/.krew}/bin"

export USE_GKE_GCLOUD_AUTH_PLUGIN=True

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# . "$HOME/.cargo/env"

# Added by OrbStack: command-line tools and integration
source ~/.orbstack/shell/init.bash 2>/dev/null || :
