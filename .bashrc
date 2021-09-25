
HISTSIZE=
HISTFILESIZE=
HISTCONTROL=ignoreboth

DISTRO=centos7
BACKEND=docker
GITHUB_USER=kingdonb
#GITHUB_TOKEN=$(cat $HOME/.github-token-flux2-bootstrap)
#DO_API_KEY=$(cat $HOME/.digitalocean-token-diversek8s-kingdon-macbook)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$GOPATH/bin:$HOME/bin:$HOME/.rvm/bin"
# echo Hello World

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# . "/Users/kingdonb/.acme.sh/acme.sh.env"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
