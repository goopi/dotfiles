export CLICOLOR=1
export EDITOR=vim
export GIT_EDITOR=vim
export GREP_OPTIONS="--color=auto" GREP_COLOR="1;32"
export HISTCONTROL=ignoredups
export HISTFILESIZE=10000
export HISTSIZE=10000
export PAGER=less

if [ `uname` == "Darwin" ]; then
  export LSCOLORS=ExGxFxDxCxHxHxCbCeEbEb
  export LC_CTYPE=en_US.UTF-8
  export LC_ALL=en_US.utf-8
  export LANG=en_US.UTF-8
else
  alias ls="ls --color=auto"
fi

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS
shopt -s checkwinsize

# PS1

function _virtualenv() {
  if [ x$VIRTUAL_ENV != x ]; then
    echo -n $'('
    echo -n ${VIRTUAL_ENV##*/}
    echo -n $') '
  fi
}

COLOR_BLACK="[30m"
COLOR_BLUE="[34m"
COLOR_GREEN="[32m"
COLOR_CYAN="[36m"
COLOR_RED="[31m"
COLOR_PURPLE="[35m"
COLOR_DARK_GRAY="[1;30m"

export PS1='
\[\e${COLOR_GREEN}\] ∴ \
\[\e${COLOR_CYAN}\]`_virtualenv`\
\[\e${COLOR_DARK_GRAY}\]\W\
\[\e${COLOR_BLUE}\]`vcprompt -f " (%b%m%u)"`\
\[\e${COLOR_RED}\]$([ \j -gt 0 ] && echo " [\j]")\
\[\e${COLOR_BLACK}\] '

alias oo="open ."
alias ..="cd .."
alias l="ls -AF"
alias ll="ls -AlhF"
alias rmr="rm -rf"
alias vi="vim"
alias tm="tmux"
alias tmn="tmux new -s"
alias tml="tmux ls"
alias tma="tmux a -t"
alias pipf="pip freeze >"
alias pipi="pip install -r"
alias delpyc="find . -name '*.pyc' | xargs rm"
alias delds="find . -name '.DS_Store' | xargs rm"
alias ping="ping -c 5"
alias h="http"
alias hjwt="h --auth-type=jwt"

function f() {
  find . -iname "*$@*.*" | grep "$@"
}

if [ -f ~/.bin/git_completion ]; then
  source ~/.bin/git_completion
fi

# homebrew
export PATH="/usr/local/bin:$PATH"

# python
export PYTHONSTARTUP=~/.pythonstartup.py
export VIRTUAL_ENV_DISABLE_PROMPT=1
export WORKON_HOME=$HOME/.venvs
if [[ -s "/usr/local/bin/virtualenvwrapper.sh" ]]; then
  source /usr/local/bin/virtualenvwrapper.sh
fi

# golang
export GOPATH=$HOME/Code/go
export PATH=$PATH:$GOPATH/bin

# node
export NODE_ENV="development"
export PATH="/usr/local/share/npm/bin:$PATH"

export PATH="$HOME/.yarn/bin:$PATH"
