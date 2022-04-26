export EDITOR="/usr/bin/vim"

if [ -r ~/.bashrc ]; then
   source ~/.bashrc
fi

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

. <(flux completion bash)
#. <(gh completion bash)
. <(helm completion bash)

#source <(kubectl completion bash | sed 's|__start_kubectl kubectl|__start_kubectl k|g')
#complete -F __start_kubectl k

source "/opt/homebrew/opt/kube-ps1/share/kube-ps1.sh"
PS1="\n\$(kube_ps1)$PS1"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# rvm use > /dev/null 2>&1
. "$HOME/.cargo/env"
