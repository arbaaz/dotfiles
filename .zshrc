# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
bindkey -v
bindkey -M viins 'jk' vi-cmd-mode
bindkey '^R' history-incremental-search-backward
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="arbo"
#frisk, bira,

# want your terminal to support 256 color schemes? I do ...
export TERM="xterm-256color"

# if you do a 'rm *', Zsh will give you a sanity check!
setopt RM_STAR_WAIT

# allows you to type Bash style comments on your command line
# good 'ol Bash
setopt interactivecomments

# Zsh has a spelling corrector
setopt CORRECT

# make sure that if a program wants you to edit
# # text, that Vim is going to be there for you
export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

# ooh, what is this? Aliases?
source ~/.oh-my-zsh/lib/alias.zsh

#source ~/.bin/tMmuxinator.zsh

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(vi-mode replace rails git ruby bundler zsh_reload wd bower git-flow vagrant alias-tips taskwarrior)
plugins=(vi-mode replace rails git ruby bundler zsh_reload wd bower git-flow vagrant taskwarrior)

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/tinyowl/.rvm/bin:/Applications/Postgres.app/Contents/Versions/9.3/bin:/Applications/Postgres.app/Contents/Versions/9.3/bin:/usr/local/go/bin:/usr/local/Cellar/rabbitmq/3.5.6/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/bin:$PATH"
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
autoload -U zmv
alias mmv='noglob zmv -W'



#docker env variables
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=$HOME/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
#consul variables
export CONSUL_AUTH_USERNAME=tinyowl-consul
export CONSUL_AUTH_PASSWORD=Jiwolfyoyg
export CONSUL_HOST=consul.tinyowl.com
export CONSUL_HTTP_AUTH=tinyowl-consul:Jiwolfyoyg
export CONSUL_HTTP_ADDR=consul.tinyowl.com
export CONSUL_TOKEN=master
#export CONTAINER=murtuza
#export ENV=feature

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#Lang
export LC_ALL='UTF8'
export LANG='UTF8'
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

#GO path
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

#Android Path
export ANDROID_HOME="/Users/tinyowl/albert/"
export ANDROID_TOOLS="/Users/tinyowl/albert/tools"
export ANDROID_PLATFORM_TOOLS="/Users/tinyowl/albert/platform-tools"
export ANDROID_BUILD_TOOLS="/Users/tinyowl/albert/build-tools/22.0.1"
PATH=$PATH:$ANDROID_HOME:$ANDROID_TOOLS:$ANDROID_PLATFORM_TOOLS:$ANDROID_BUILD_TOOLS
#export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

export NVM_DIR="/Users/tinyowl/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#nvm use 0.12
