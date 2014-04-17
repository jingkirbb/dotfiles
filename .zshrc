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

#------------------------------------ RVM --------------------------------------#
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


source $ZSH/oh-my-zsh.sh

# export PGHOST=localhost
unsetopt correct
unsetopt correct_all

PROMPT='%{$fg[red]%}%m %{$fg[cyan]%}%1/%{$fg_bold[green]%} $(git_prompt_info)࿘ %{$reset_color%}'

#----------------------------------- Aliases -----------------------------------#
alias zshconfig="vim ~/.zshrc"
alias rake='noglob rake'
alias tailf='tail -f'

#------------------------------------ PATH -------------------------------------#
# PATH=/usr/local/share/npm/bin:/Users/dabramov/groupon/util/bin:/usr/local/bin:$HOME/bin:$PATH:$HOME/bin

