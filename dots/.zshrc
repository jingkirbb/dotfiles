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
alias tailf='tail -f'
alias :q='exit'

export NVM_DIR="/Users/dabramov/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
