# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

plugins=(git mercurial)

source $ZSH/oh-my-zsh.sh
alias zshconfig="vim ~/.zshrc"

# Theme with full path names and hostname
# Handy if you work on different servers all the time;
# Taken from:
# ZSH_THEME="maran"
UNAME=$(uname)
DARWIN="Darwin"

if [ "$UNAME" = "$DARWIN" ]
then
    USERNAME_COLOR="cyan"
    HOST_COLOR="yellow"
    PATH_COLOR="green"
else
    USERNAME_COLOR="red"
    HOST_COLOR="green"
    PATH_COLOR="yellow"
fi

PROMPT='%{$fg[USERNAME_COLOR]%}%n%{$reset_color%}@%{$fg[HOST_COLOR]%}%M:%{$fg[PATH_COLOR]%}%/%{$reset_color%}$(git_prompt_info) %(!.#.$) '
PROMPT=$(echo $PROMPT | sed s/USERNAME_COLOR/$USERNAME_COLOR/g)
PROMPT=$(echo $PROMPT | sed s/HOST_COLOR/$HOST_COLOR/g)
PROMPT=$(echo $PROMPT | sed s/PATH_COLOR/$PATH_COLOR/g)
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[cyan]%}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"