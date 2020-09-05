source $HOME/.bash_aliases

source $HOME/.bash_git
GIT_PS1_SHOWUPSTREAM="verbose"
GIT_PS1_SHOWDIRTYSTATE=true
PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

export PATH="$PATH:$HOME/bin:$HOME/go/bin"
export GOROOT=/root/sdk/go1.15.1
export GOPATH=/go
export GOBIN=/go/bin
export PATH=/go/bin:$GOROOT/bin:$PATH
