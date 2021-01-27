KUBECTX=github.com/ahmetb/kubectx
go-get-binaries () {
for i in build install
do
	go $i ./cmd/...
done
}
do-gh-get-authtoken () {
  ~/go/bin/yq r ~/.config/gh/hosts.yml '"github.com".oauth_token'
}

alias be='bundle exec'
alias k=kubectl
alias kd='kubectl --namespace=dev'
alias kf='kubectl --namespace=fluxcd'
alias kg="kubectl get -A"
alias kj='kubectl --namespace=jenkins'
alias kcm='kubectl --namespace=chart-museum'
alias ksm='kubectl --namespace=cert-manager'
alias kni='kubectl --namespace=ingress-nginx'
alias ks='kubectl --namespace=kube-system'
alias kw='kubectl --namespace=weavek8sops'
alias vi=vim
alias node-util='kubectl get nodes --no-headers | awk '\''{print $1}'\'' | xargs -I {} sh -c '\''echo {} ; kubectl describe node {} | grep Allocated -A 5 | grep -ve Event -ve Allocated -ve percent -ve -- ; echo '\'''

# if test -f `which apk`; then
#   alias apks="apk add vim git-perl git-email fzf gcc g++ build-base"
#   alias ascp="apk add openssh-client"
# fi

alias ls='ls -p'

alias hephy="git clone https://github.com/kingdonb/gitops-hephy.git -b kingdonb"
alias remem="git config credential.helper store"
alias kubec="mkdir ~/.kube; scp yebyen@nerdland.info:kubeconfig~ ~/.kube/config"
alias kingdonb="kubectl config set-context --current --namespace=kingdonb"
alias ahmetb="go get -d $KUBECTX; pushd /go/src/$KUBECTX; go-get-binaries; popd"
alias ghtoken='export GITHUB_TOKEN=`do-gh-get-authtoken`'
# alias home="hephy; remem; ascp; kubec; apks; get-go.sh; ahmetb"
