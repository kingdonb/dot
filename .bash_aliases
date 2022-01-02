KUBECTX=github.com/ahmetb/kubectx
# GOPATH=$HOME/go

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
# alias k=kubectl
alias ka='kubectl --namespace=argocd'
alias kai='kubectl --namespace=argocd-image-updater'
alias kd='kubectl --namespace=deis'
alias kf='kubectl --namespace=fluxcd'
alias kff='kubectl --namespace=flux-system'
alias krc='kubectl --namespace=registry-creds-system'
alias cpk='cd ~/projects/personal/kube'
alias cpg='cd ~/projects/personal/go'
alias cww='cd ~/weaveworks/wks-quickstart-firekube'
alias kg="kubectl get -A"
alias kj='kubectl --namespace=jenkins'
alias kb='kubectl --namespace=blog'
# alias ka='kubectl --namespace=aws-provider-system'
alias kc='kubectl --namespace=cluster-api-system'
alias kcm='kubectl --namespace=chart-museum'
alias ksm='kubectl --namespace=cert-manager'
alias ko='kubectl --namespace=commitsto'
alias kob='kubectl --namespace=ob-mirror'
alias kni='kubectl --namespace=ingress-nginx'
alias ks='kubectl --namespace=kube-system'
alias ksb='kubectl --namespace=simplest-commitbee'
alias kh='kubectl --namespace=hephy'
alias kw='kubectl --namespace=weavek8sops'
alias qgit='git'
alias vi=vim
alias node-util='kubectl get nodes --no-headers | awk '\''{print $1}'\'' | xargs -I {} sh -c '\''echo {} ; kubectl describe node {} | grep Allocated -A 5 | grep -ve Event -ve Allocated -ve percent -ve -- ; echo '\'''
alias pod-reqs='kubectl get po -o custom-columns="Name:metadata.name,CPU-request:spec.containers[*].resources.requests.cpu"'
alias hogs='k top po -A --use-protocol-buffers|sort -k4 -h'

alias jenkins-down="echo '{\"apiVersion\":\"apps/v1\",\"kind\":\"StatefulSet\",\"metadata\":{\"name\":\"jenkins\",\"namespace\":\"jenkins\"},\"spec\":{\"replicas\":0}}'| kubectl apply -f - --validate=false"

if test -f `which apk >/dev/null 2>&1`; then
  alias apks="apk add vim git-perl git-email fzf gcc g++ build-base"
  alias ascp="apk add openssh-client"
fi

alias pfsh='echo "
rdr pass inet proto tcp from any to any port 22 -> 127.0.0.1 port 2222
" | sudo pfctl -ef -'


alias ls='ls -p'
# alias sj='ssh kbarret8@jenkins.oit.nd.edu'
# alias jbak='rsync -aiy --delete --progress kbarret8@jenkins.oit.nd.edu:/data/jenkins/backup/*.zip ~/jenkins/history/jenkins-backups'
alias rfluxcred='for i in 11-certificates 31-openvpn 32-keycloak \
33-kube-oidc-proxy 91-harbor; do flux resume ks $i; done'

alias gtd='git tag -d'
alias gpo='git push origin'

#alias kubec="mkdir ~/.kube; scp yebyen@nerdland.info:kubeconfig~ ~/.kube/config"
alias kingdonb="kubectl config set-context --current --namespace=kingdonb"
# ~/go/pkg/mod/github.com/ahmetb/kubectx@v0.9.4
alias ahmetb="go get -d $KUBECTX; pushd ~/go/pkg/mod/$KUBECTX@v0.9.4; go-get-binaries; popd"
alias ghtoken='export GITHUB_TOKEN=`do-gh-get-authtoken`'
alias rakkess="kubectl access-matrix"
# alias home="get-go.sh; ahmetb"
