export EDITOR="/usr/bin/vim"
ulimit -n 10240

if [ -r ~/.bashrc ]; then
   source ~/.bashrc
fi

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

. <(flux completion bash)
#. <(gh completion bash)
. <(helm completion bash)
#. <(kp completion bash)
. <(kconf completion bash)

source <(kubectl completion bash | sed 's|__start_kubectl kubectl|__start_kubectl k|g')
complete -F __start_kubectl k

if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
 export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi

function kgetall {
  kubectl api-resources --verbs=list --namespaced -o name | xargs -n1 kubectl get --show-kind --ignore-not-found "$@"
}
# complete -F __start_kubectl kgetall
# https://stackoverflow.com/a/53016918/661659

source "/opt/homebrew/opt/kube-ps1/share/kube-ps1.sh"
PS1="\n\$(kube_ps1)$PS1"

# rvm use > /dev/null 2>&1
# . "$HOME/.cargo/env"


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"



export WASMTIME_HOME="$HOME/.wasmtime"

export PATH="$WASMTIME_HOME/bin:$PATH"