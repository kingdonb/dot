KUBECTX=github.com/ahmetb/kubectx
go-get-binaries () {
for i in build install
do
	go $i ./cmd/...
done
}

alias be='bundle exec'
alias k=kubectl
alias kd='kubectl --namespace=dev'
alias kf='kubectl --namespace=fluxcd'
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
alias cper='cd ~/projects/nd_api/nd-person-api-ws'
alias cpar='cd ~/prod/used/hephynator--first-guidance/app-repos'
alias cww='cd ~/weaveworks/wks-quickstart-firekube'
alias kg="kubectl get -A"
alias kj='kubectl --namespace=jenkins'
alias kb='kubectl --namespace=blog'
alias ka='kubectl --namespace=aws-provider-system'
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

if test -f `which apk`; then
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
alias kingdonb="kubectl config set-context --current --namespace=kingdonb"
alias ahmetb="go get -d $KUBECTX; pushd /go/src/$KUBECTX; go-get-binaries; popd"
# alias home="hephy; remem; ascp; kubec; apks; get-go.sh; ahmetb"
