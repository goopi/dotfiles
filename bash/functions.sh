
function f() {
  find . -iname "*$@*.*" | grep "$@"
}

function del() {
  find . -name "*.$@" | xargs rm
}

function delpyc() {
  del pyc
}

function delds() {
  del DS_Store
}

function take() {
  mkdir -p "$1"
  cd "$1"
}

function e64() {
  echo -n "$1" | base64
}

function d64() {
  echo -n "$1" | base64 --decode
}
