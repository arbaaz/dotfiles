
# aliases for Tmux
alias tmux='tmux -2 -u'
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'
alias start_tinyowl='tmuxinator start tinyowl'
# convenience aliases for editing configs
alias ev='vim ~/.vimrc'
alias et='vim ~/.tmux.conf'
alias ez='vim ~/.zshrc'
alias ea='vim ~/.oh-my-zsh/lib/alias.zsh'
alias vi=vim
#grunt alias
alias gw='grunt watch'
#reloading dot file
alias sz='source ~/.zshrc'
alias speedtest="wget -O /dev/null http://speedtest.che01.softlayer.com/downloads/test100.zip"

# ssh aliases

alias ssh-raftaar='ssh -i ~/.aws/raftaar.pem ubuntu@54.68.248.189'
#git aliases
alias ggpull='git pull upstream $(current_branch)'
alias gfu='git fetch upstream'
alias gpu='git push upstream $(current_branch)'
alias gmu='git merge upstream/staging'
alias git='hub'
alias uncommit='git reset --soft HEAD^'
alias unstage='git reset'
alias hb='hub browse'
alias gcod='git checkout develop'
alias gcom='git checkout master'
alias gffs='git flow feature start'
alias gfff='git flow feature finish'


function branch_update_git(){
  git fetch upstream
  git checkout master
  git merge upstream/master --no-edit
  git checkout -
  git checkout develop
  git merge upstream/develop --no-edit
  git checkout -
}


