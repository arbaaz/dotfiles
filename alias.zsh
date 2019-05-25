# aliases for Tmux
alias tmux='tmux -2 -u'
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'
# convenience aliases for editing configs
alias ev='vim ~/.vimrc'
alias et='vim ~/.tmux.conf'
alias ez='vim ~/.zshrc'
alias ea='vim ~/.oh-my-zsh/lib/alias.zsh'
alias ew='vim /Users/rbz/workspace/shaadi/shaadi_workflow.sh'
alias vi=vim
#reloading dot file
alias sz='source ~/.zshrc'
#alias speedtest="wget -O /dev/null http://speedtest.che01.softlayer.com/downloads/test100.zip"
alias subl='reattach-to-user-namespace subl'
alias apachectl='sudo /usr/local/bin/apachectl'
alias ssh_pi='ssh 192.168.0.111 -l pi'
alias git_rename='git branch -m'
#docker
alias docker-clean-unused='docker system prune --all --force --volumes'
#alias docker-clean-all='docker stop $(docker container ls -a -q) && docker system prune -a -f --volumes'
alias docker-clean-containers='docker container stop $(docker container ls -a -q) && docker container rm $(docker container ls -a -q)'

#wifi login
alias wifi-login='http get http://172.16.173.1:8090/login.xml mode=191 username=arbaaz.100x password=arbaaz%40123 a=1538977821797 producttype=0'


#python
alias pip_install_force='pip install --upgrade --force-reinstall -r requirements.txt'
alias pip_install='pip install -r requirements.txt'
#custom functions
#
#tell(){
#  TEXT="$@"
#  curl -s https://api.telegram.org/bot$JARVIS_BOT_TOKEN/sendMessage\?chat_id\=$ARBAAZ_CHAT_ID\&text\=${TEXT} > /dev/null
#}


#git aliases
function gpr(){
  git push origin $(git_current_branch)
  git pull-request -b develop
}
alias ggpull='git pull origin $(current_branch)'
alias gb_prune='git branch | sed -e "/master/d" | sed -e "/develop/d" | sed "s/^/git branch -D/"  | bash'
alias gcod='git checkout develop'
alias gdc='git diff --cached'
alias gfo='git fetch origin'
alias gpo='git push origin $(current_branch)'
alias git='hub'
alias uncommit='git reset --soft HEAD\^'
alias unstage='git reset'
alias hb='hub browse'
alias gcom='git checkout master'
alias ssh_bastion="ssh ubuntu@13.233.214.173"
alias ssh_shaadi_git_server="ssh git@172.31.1.63"
alias ssh_prod_bastion="ssh ubuntu@13.126.186.178"
alias ssh_testnet="ssh -i ~/.ssh/cdex-mumbai-development.pem -o ProxyCommand='ssh -W %h:%p ubuntu@13.232.76.240' ubuntu@172.31.2.19"
alias ssh_devnet="ssh -i ~/.ssh/cdex-mumbai-development.pem -o ProxyCommand='ssh -W %h:%p ubuntu@13.232.76.240' ubuntu@172.31.4.81"
alias ssh_scale="ssh root@51.15.44.208"
alias publish_trinity='npm run build && grunt publish && say extension is published'
alias disable_amazon_tv="curl 'http://192.168.0.1/cgi?2' -H 'Pragma: no-cache' -H 'Origin: http://192.168.0.1' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.8' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36' -H 'Content-Type: text/plain' -H 'Accept: */*' -H 'Cache-Control: no-cache' -H 'Referer: http://192.168.0.1/mainFrame.htm' -H 'Cookie: Authorization=Basic YWRtaW46YWRtaW4=' -H 'Connection: keep-alive' --data-binary $'[LAN_WLAN_MACTABLEENTRY#1,2,1,0,0,0#0,0,0,0,0,0]0,1\r\nEnabled=0\r\n' --compressed"
alias enable_amazon_tv="curl 'http://192.168.0.1/cgi?2' -H 'Pragma: no-cache' -H 'Origin: http://192.168.0.1' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.8' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36' -H 'Content-Type: text/plain' -H 'Accept: */*' -H 'Cache-Control: no-cache' -H 'Referer: http://192.168.0.1/mainFrame.htm' -H 'Cookie: Authorization=Basic YWRtaW46YWRtaW4=' -H 'Connection: keep-alive' --data-binary $'[LAN_WLAN_MACTABLEENTRY#1,2,1,0,0,0#0,0,0,0,0,0]0,1\r\nEnabled=1\r\n' --compressed"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias popcorn_downloads='/var/folders/bj/p26t6lfd483bfq085872jnmc0000gp/T/Butter'
alias ctags="`brew --prefix`/bin/ctags"


alias ww4_sandbox="ssh -i /Users/rbz/workspace/shaadi/sandbox-automation/staging-mumbai.pem ec2-user@172.31.1.97 -t \"sudo su\""
alias ww4_access_logs="ssh -i /Users/rbz/workspace/shaadi/sandbox-automation/staging-mumbai.pem ec2-user@172.31.1.97 -t \"tail -f /var/log/nginx/access.log\""
alias ww4_logs="ssh -i /Users/rbz/workspace/shaadi/sandbox-automation/staging-mumbai.pem ec2-user@172.31.1.97 -t \"tail -f /var/www/shaadiapi/supervisor.log\""
alias back1_sandbox="ssh -i /Users/rbz/workspace/shaadi/sandbox-automation/staging-mumbai.pem ec2-user@172.31.1.114 -t \"sudo su\""
alias back1_access_logs="ssh -i /Users/rbz/workspace/shaadi/sandbox-automation/staging-mumbai.pem ec2-user@172.31.1.114 -t \"sudo tail -f /var/log/nginx/access.log\""
