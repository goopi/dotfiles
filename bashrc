export CLICOLOR=1

export EDITOR=vim
export GIT_EDITOR=vim

export GREP_COLORS='ms=01;32'

export HISTCONTROL=ignoredups:erasedups
export HISTFILESIZE=10000
export HISTSIZE=10000
export PAGER=less

if [[ "$(uname)" == "Darwin" ]]; then
  export LSCOLORS=ExGxFxDxCxHxHxCbCeEbEb
  export LANG=en_US.UTF-8
  export LC_CTYPE=en_US.UTF-8
  unset LC_ALL
else
  alias ls="ls --color=auto"
fi

# append to the history file, don't overwrite it
shopt -s histappend
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS
shopt -s checkwinsize
shopt -s cmdhist


# PS1

_virtualenv() {
  [[ -n "$VIRTUAL_ENV" ]] && printf '(%s) ' "${VIRTUAL_ENV##*/}"
}

COLOR_BLUE="[34m"
COLOR_GREEN="[32m"
COLOR_CYAN="[36m"
COLOR_RED="[31m"
COLOR_DARK_GRAY="[37m"

export PS1='\n\[\e${COLOR_GREEN}\] ∴ \
\[\e${COLOR_CYAN}\]$(_virtualenv)\
\[\e${COLOR_DARK_GRAY}\]\W\
\[\e${COLOR_BLUE}\]$(vcprompt -f " (%b%m%u)" 2>/dev/null)\
\[\e${COLOR_RED}\]$([ \j -gt 0 ] && echo " [\j]")\
\[\e[0m\] '

alias grep='grep --color=auto'
alias oo="open ."
alias ..="cd .."
alias l="ls -AF"
alias ll="ls -AlhF"
alias rmr='rm -rf --'
alias vi="vim"
alias tm="tmux"
alias tmn="tmux new -s"
alias tml="tmux ls"
alias tma="tmux a -t"
alias pipi='pip install -r requirements.txt'
alias delpyc="find . -name '*.pyc' -delete"
alias delds="find . -name '.DS_Store' -delete"
alias ping="ping -c 5"
alias h="http"
alias hjwt="h --auth-type=jwt"
alias yt='yt-dlp -f best --'
alias d8601="date -u +%Y-%m-%dT%H:%M:%SZ"
alias headers="httpstat"
alias gp="git pull"
alias gs='git status -sb'
alias gl='git log --oneline --decorate -10'
alias gd='git diff'
alias gds='git diff --staged'
alias nuu="nvm use;nvm use"
alias relo='source ~/.bashrc'
alias path='echo -e ${PATH//:/\\n}'
alias flushdns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'

function f() {
  find . -iname "*$@*.*" | grep "$@"
}

if [ -f ~/.bin/git_completion ]; then
  source ~/.bin/git_completion
fi

# homebrew
export PATH="/usr/local/bin:$PATH"

# python
export PATH="~/Library/Python/3.7/bin:$PATH"
export PYTHONSTARTUP=~/.pythonstartup.py
export VIRTUAL_ENV_DISABLE_PROMPT=1
export WORKON_HOME=$HOME/.venvs
if [[ -s "/usr/local/bin/virtualenvwrapper.sh" ]]; then
  source /usr/local/bin/virtualenvwrapper.sh
fi

# golang
#export GOPATH=$HOME/code/go
#export PATH=$PATH:$GOPATH/bin

# node
export NODE_ENV="development"
export PATH="/usr/local/share/npm/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# docker
export PATH="/Applications/Docker.app/Contents/Resources/bin:$PATH"

# bun
export PATH="$HOME/.bun/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/goopi/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

