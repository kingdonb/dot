export PATH="/usr/local/opt/go@1.12/bin:$PATH"
export PATH="/usr/local/opt/postgresql@12/bin:$PATH"
export GOPATH="$HOME/go:$HOME/personal/go"
export EDITOR="/usr/local/bin/vim"

if [ -r ~/.bashrc ]; then
   source ~/.bashrc
fi

# export KUBECONFIG="$HOME/.kube/config:$HOME/Downloads/hephynator--gullible-relationship-kubeconfig.yaml"

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
[[ -r "/usr/local/etc/bash_completion.d/git-completion.bash" ]] && . "/usr/local/etc/bash_completion.d/git-completion.bash"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

. <(flux completion bash)
. <(gh completion bash)
. <(helm completion bash)

. <(jx completion bash)
source <(kubectl completion bash | sed 's|__start_kubectl kubectl|__start_kubectl k|g')
. <(loft completion bash)
