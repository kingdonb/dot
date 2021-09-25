export EDITOR="/usr/bin/vim"

if [ -r ~/.bashrc ]; then
   source ~/.bashrc
fi

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
[[ -r "/usr/local/etc/bash_completion.d/git-completion.bash" ]] && . "/usr/local/etc/bash_completion.d/git-completion.bash"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

. <(flux completion bash)
. <(helm completion bash)

source <(kubectl completion bash | sed 's|__start_kubectl kubectl|__start_kubectl k|g')

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
