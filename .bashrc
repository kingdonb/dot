
HISTSIZE=
HISTFILESIZE=
HISTCONTROL=ignorespace

DISTRO=centos7
BACKEND=docker
GITHUB_USER=kingdonb
GITHUB_TOKEN=$(cat $HOME/.github-token-flux2-bootstrap)
DO_API_KEY=$(cat $HOME/.digitalocean-token-diversek8s-kingdon-macbook)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$GOPATH/bin:$HOME/bin:$HOME/.rvm/bin"
# echo Hello World

. ~/.bash_aliases
. "/Users/kingdonb/.acme.sh/acme.sh.env"
