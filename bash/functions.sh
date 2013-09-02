f() {
  find . -iname "*$@*.*" | grep "$@"
}

del() {
  find . -name "*.$@" | xargs rm
}

# delete all *.pyc
delpyc() {
  find . -name "*.pyc" | xargs rm
}

# delete all .DS_Store
deldstore() {
  find . -name ".DS_Store" | xargs rm
}

# use ack to search files and open it in
# `vi` with the searched text as the last searched phrase in vi
vag() {
  vi -p -c "/$1" $(ag -l $@)
}

take() {
  mkdir -p "$1"
  cd "$1"
}

# changing directory to code project
pj() {
  cd $PROJECTS/$1
}

todo() {
  touch ~/Desktop/"$1"
}

e64() {
  echo -n "$1" | base64
}

d64() {
  echo -n "$1" | base64 --decode
}

github() {
  git clone git@github.com:$1.git
}

gf() {
  local branch=$1
  git checkout -b $branch origin/$branch
}
