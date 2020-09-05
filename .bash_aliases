alias k=kubectl
alias kg="kubectl get -A"
alias vi=vim
alias apks="apk add vim git-perl git-email fzf gcc g++ build-base"
alias ascp="apk add openssh-client"
alias hephy="git clone https://github.com/kingdonb/gitops-hephy.git -b kingdonb"
alias remem="git config credential.helper store"
alias kubec="mkdir ~/.kube; scp yebyen@nerdland.info:kubeconfig~ ~/.kube/config"
alias kingdonb="kubectl config set-context --current --namespace=kingdonb"
alias ahmetb="CGO_ENABLED=0 go build -i github.com/ahmetb/kubectx/cmd/..."
alias home="hephy; remem; ascp; kubec; apks; get-go.sh; ahmetb"
