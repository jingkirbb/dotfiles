# export JAVA_HOME=/home/y/libexec/java
# export ANT_HOME=/home/y/bin/ant
# export PYTHON_HOME=/home/y/bin
# Path to your oh-my-zsh configuration.

ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)


source $ZSH/oh-my-zsh.sh

#------------------------------------ RVM --------------------------------------#
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#------------------------------------ NVM --------------------------------------#
export NVM_DIR="/Users/dabramov/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# export PGHOST=localhost
unsetopt correct
unsetopt correct_all

PROMPT='%{$fg[red]%}%m %{$fg[cyan]%}%~%{$fg_bold[green]%}$(git_prompt_info) ࿘  %{$reset_color%}'
ZSH_THEME_GIT_PROMPT_PREFIX=" $FG[075]"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[129]"



#----------------------------------- Aliases -----------------------------------#
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias la='ls -lah'
alias rake='noglob rake'
alias tailf='tail -f'
alias y='cd ~/y'
alias :q='exit'

# Use local vim if exists
[ -e /usr/local/bin/vim ] && alias vim='/usr/local/bin/vim'

#--------------------------------- Y Specific ----------------------------------#
alias ycuke='cucumber ~/y/ycuke/support ~/y/ycuke/step_definitions/ step_definitions/ BASE_FUNCTIONAL_PATH=`pwd`'
alias sync_storm='unison ~/storm ssh://dahlpall.corp.ne1.yahoo.com/storm -silent'
alias vm0='ssh dabramov@afraidought-vm0.corp.yahoo.com'
alias devbox='ssh dabramov@afraidought.corp.yahoo.com'
alias ostack='ssh dabramov@dahlpall.corp.ne1.yahoo.com'

export PATH=~/bin:~/npm/bin:/usr/local/bin:$PATH
export GOPATH=~
#------------------------------------ VARS -------------------------------------#
# export PATH=~/bin:/usr/local/bin:$PATH
# /* export VIMRUNTIME=/home/dabramov/vim74/runtime */
# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export DOCKER_CERT_PATH=/Users/dabramov/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
