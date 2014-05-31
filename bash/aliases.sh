alias reload=". ~/.bash_profile"
alias disks="df -h"
alias pu="pushd"
alias po="popd"
alias o="open"
alias h="history"
alias delwhere="xattr -d com.apple.metadata:kMDItemWhereFroms"

# kill
alias ka9="killall -9"
alias k9="kill -9"

# dirs
alias 1="cd -"
alias ..="cd .."
alias ...="cd ../.."
alias l="ls -CF"
alias ll="ls -lF"
alias la="ls -AF"
alias lla="ls -AlhF"
alias lns="ln -s"
alias lh="ls -alt | head"
alias rmr="rm -rf"

# vim
alias v="vim"
alias vv="mvim"
alias vi="v"
alias vu="v +BundleInstall +qall"

# tmux
alias tm="tmux"
alias tmn="tmux new -s"
alias tml="tmux ls"
alias tma="tmux a -t"

# networking
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias flush="dscacheutil -flushcache"
alias listen="lsof -i | grep LISTEN"

# python
alias pif="pip freeze > requirements.txt"
alias pii="pip install -r requirements.txt"

# ios
alias simu="open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"

# git
alias st="git status -sb"
alias g="git"
alias ga="git add"
alias gau="git add -u"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gc="git commit -m"
alias gd="git diff"
alias gd1="git diff HEAD~1"
alias gdom="git diff master origin/master"
alias gdc="git diff --cached --name-only"
alias gl="git log --pretty='format:%Cgreen%h%Creset %an - %s' --graph"
alias gm="git merge --no-ff"
alias gmom="git merge origin/master"
alias gpom="git pull origin master"
alias gp="git push"
alias gpu="git push -u"
alias gr="git rebase"
alias grit="git rebase -i"
alias grh="git reset --hard"
alias grh1="git reset --hard HEAD~1"
alias grf="git reset HEAD"
alias gsno="git show --name-only"
alias gsh="git show --pretty=short --stat"
alias gst="git stash --keep-index"
alias gsp="git stash pop"
alias gta="git tag -a"
alias gtp="git push --tags"
alias grmc="git rm --cached"
