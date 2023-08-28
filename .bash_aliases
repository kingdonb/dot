KUBECTX=github.com/ahmetb/kubectx
# GOPATH=$HOME/go

go-get-binaries () {
for i in build install
do
	go $i ./cmd/...
done
}
do-gh-get-authtoken () {
#  ~/go/bin/yq r ~/.config/gh/hosts.yml '"github.com".oauth_token'
  ~/go/bin/yq '."github.com".oauth_token' ~/.config/gh/hosts.yml
}

alias whatswrong='kubectl get po -A|grep -v "3/3     Running"|grep -v "2/2     Running"|grep -v "1/1     Running"|grep -v "0/1     Completed"'
alias lwhatswrong="watch 'kubectl get po -A|grep -v \"3/3     Running\"|grep -v \"2/2     Running\"|grep -v \"1/1     Running\"|grep -v \"0/1     Completed\"'"
alias grc='git rebase --continue'
#alias dcac='git diff --cached'
alias ga='git add'
alias gap='git add -p'
alias gc='git commit -v -s -S'
alias gcm='git commit -v -s -S -m'
alias gmf='git merge --ff-only'
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git l'

alias fr='flux reconcile ks flux-system --with-source'
alias nuki='kubectl config delete-user kind-kind; kubectl config delete-cluster kind-kind; kubectl config delete-context kind-kind'

alias supertldr='pushd ~/projects/weaveworks/kubeconfig-ca-fetch && make clean && make supertldr && popd'

function checkon-kured() {
  for i in `kubectl -n kube-system get po --selector app.kubernetes.io/instance=kured -oname`; do
    kubectl -n kube-system exec -it $i -- sh -c \
      "nsenter -m/proc/1/ns/mnt -- sh -c 'echo -n \`cat /etc/hostname\`:\  && ls -l /var/run/reboot-required'"
  done
}

alias kured=checkon-kured

alias be='bundle exec'
alias k=kubectl
complete -F __start_kubectl k
alias ka='kubectl --namespace=argocd'
alias kai='kubectl --namespace=argocd-image-updater'
alias kd='kubectl --namespace=deis'
alias kf='kubectl --namespace=flux'
alias kff='kubectl --namespace=flux-system'
alias fa='flux get ks -A|egrep -v ^flux-system'
alias faa='flux get ks -A'
alias fak='flux get ks'
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
#alias ko='kubectl --namespace=commitsto'
alias kob='kubectl --namespace=ob-mirror'
alias kni='kubectl --namespace=ingress-nginx'
alias ks='kubectl --namespace=kube-system'
alias ksb='kubectl --namespace=simplest-commitbee'
alias kh='kubectl --namespace=hephy'
alias kw='kubectl --namespace=weavek8sops'
alias moo='ssh moo'
alias msi='ssh msi'
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
33-kube-oidc-proxy 91-harbor 93-scrob-prod; do flux resume ks $i& done'
alias pfluxcred='for i in 31-openvpn 32-keycloak 33-kube-oidc-proxy \
91-harbor 93-scrob-prod; do flux resume ks $i& done'

alias gtd='git tag -d'
alias gpo='git push origin'
alias gp='git push'

#alias kubec="mkdir ~/.kube; scp yebyen@nerdland.info:kubeconfig~ ~/.kube/config"
alias kingdonb="kubectl config set-context --current --namespace=kingdonb"
# ~/go/pkg/mod/github.com/ahmetb/kubectx@v0.9.4
alias ahmetb="go install $KUBECTX@v0.9.4; pushd ~/go/pkg/mod/$KUBECTX@v0.9.4; go-get-binaries; popd"
alias ghtoken='export GITHUB_TOKEN=`do-gh-get-authtoken`'
alias rakkess="kubectl access-matrix"
# alias home="get-go.sh; ahmetb"
