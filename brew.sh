#!/bin/bash

# ask for the administrator password upfront
sudo -v

# keep-alive: update existing `sudo` time stamp if set, otherwise do nothing
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
if test ! $(which brew); then exit; fi

brew update
brew upgrade --all

brew install coreutils automake findutils bash ruby node ack \
  the_silver_searcher jpeg libmagic vcprompt tmux tree htop jq go \
  httpie ripgrep wget macvim git git-extras ffmpeg freetype mkcert mysql-client webp

brew cleanup

brew install --cask quicklook-json qlimagesize

exit 0
