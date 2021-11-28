export EDITOR="/usr/bin/vim"

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
[[ -r "/opt/homebrew/etc/bash_completion.d/git-completion.bash" ]] && . "/opt/homebrew/etc/bash_completion.d/git-completion.bash"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

eval "$(/opt/homebrew/bin/brew shellenv)"
. <(flux completion bash)
#. <(gh completion bash)
. <(helm completion bash)

source <(kubectl completion bash | sed 's|__start_kubectl kubectl|__start_kubectl k|g')

source "/opt/homebrew/opt/kube-ps1/share/kube-ps1.sh"
PS1="\$(kube_ps1)$PS1"

if [ -r ~/.bashrc ]; then
   source ~/.bashrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# rvm use > /dev/null 2>&1
