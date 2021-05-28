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
alias ka='k --namespace=argocd'
alias kai='k --namespace=argocd-image-updater'
alias kd='k --namespace=dev'
alias kf='k --namespace=fluxcd'
alias kff='k --namespace=flux-system'
alias kp='k --namespace=pa'
alias krc='k --namespace=registry-creds-system'
alias ce='cd ~/projects/personal/kube/etherpad-draft'
alias cr='cd ~/projects/personal/mm/sredash'
alias cob='cd ~/projects/personal/mm/ob-mirror'
alias codb='cd ~/projects/ruby/composite_primary_keys/docker-images/OracleDatabase'
alias cpk='cd ~/projects/personal/kube'
alias cpak='cd ~/projects/pa/personnel-actions'
alias cpam='cd ~/projects/pa/pa_master'
alias cpaw='cd ~/projects/pa/wks-root'
alias cpmr='cd ~/projects/personal/mm/resume'
alias csi='cd ~/projects/personal/mm/simplest-commitbee'
alias czap='cd ~/projects/pzaforms/wks-root/pzaexcp-api'
alias czaf='cd ~/projects/pzaforms/wks-root/pzaexcp-frontend'
alias ckf='cd ~/Desktop/kubefunk'
alias chthc='cd ~/Desktop/hephy/teamhephy.com/charts'
alias chn='cd ~/hephy/local/hephynator'
alias chap='cd ~/projects/nd_api/rails-web-api'
alias chrp='cd ~/projects/nd_api/nd_hrpy_api_internal'
alias cpar='cd ~/prod/used/hephynator--first-guidance/app-repos'
#alias cper='cd ~/projects/personal/empfin-request'
alias cper='cd ~/projects/nd_api/nd-person-api-ws'
alias cppm='cd ~/projects/personal/micro-swansons'
alias cpg='cd ~/projects/personal/go'
alias cww='cd ~/weaveworks/wks-quickstart-firekube'
alias kg="k get -A"
alias kj='k --namespace=jenkins'
alias kb='k --namespace=blog'
# alias ka='k --namespace=aws-provider-system'
alias kc='k --namespace=cluster-api-system'
alias kcm='k --namespace=chart-museum'
alias ksm='k --namespace=cert-manager'
alias ko='k --namespace=commitsto'
alias kob='k --namespace=ob-mirror'
alias kni='k --namespace=nginx-ingress'
alias ks='k --namespace=kube-system'
alias ksb='k --namespace=simplest-commitbee'
alias kh='k --namespace=hephy'
alias kw='k --namespace=weavek8sops'
alias qgit='git'
alias vi=vim
alias node-util='k get nodes --no-headers | awk '\''{print $1}'\'' | xargs -I {} sh -c '\''echo {} ; k describe node {} | grep Allocated -A 5 | grep -ve Event -ve Allocated -ve percent -ve -- ; echo '\'''
alias pod-reqs='k get po -o custom-columns="Name:metadata.name,CPU-request:spec.containers[*].resources.requests.cpu"'

if test -f `which apk >/dev/null 2>&1`; then
  alias apks="apk add vim git-perl git-email fzf gcc g++ build-base"
  alias ascp="apk add openssh-client"
fi

alias pfsh='echo "
rdr pass inet proto tcp from any to any port 22 -> 127.0.0.1 port 2222
" | sudo pfctl -ef -'


alias ls='ls -p'
alias sj='ssh kbarret8@jenkins.oit.nd.edu'
alias jbak='rsync -aiy --delete --progress kbarret8@jenkins.oit.nd.edu:/data/jenkins/backup/*.zip ~/jenkins/history/jenkins-backups'

alias gtd='git tag -d'
alias gpo='git push origin'

alias hephy="git clone https://github.com/kingdonb/gitops-hephy.git -b kingdonb"
# alias remem="git config credential.helper store"
alias kubec="mkdir ~/.kube; scp yebyen@nerdland.info:kubeconfig~ ~/.kube/config"
alias kingdonb="k config set-context --current --namespace=kingdonb"
alias ahmetb="go get -d $KUBECTX; pushd ~/go/src/$KUBECTX; go-get-binaries; popd"
alias ghtoken='export GITHUB_TOKEN=`do-gh-get-authtoken`'
alias rakkess="k access-matrix"
alias kubectl='k'
# alias home="hephy; remem; ascp; kubec; apks; get-go.sh; ahmetb"
