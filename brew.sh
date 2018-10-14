#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp if set, otherwise do nothing
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# REQUIRED: Install Xcode and Command Line Developer Tools
sudo xcode-select -s /Applications/Xcode-beta.app/Contents/Developer/

#
# Homebrew
#

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
if test ! $(which brew); then exit; fi

brew update
brew upgrade --all

brew install coreutils automake findutils bash ruby node ack \
  the_silver_searcher jpeg libmagic vcprompt tmux tree htop jq go \
  httpie ripgrep
brew install vim --override-system-vi
brew install macvim
brew install wget --enable-iri
brew install homebrew/dupes/grep
brew install git --with-brewed-openssl
brew install git-extras

brew cleanup

# brew tap caskroom/cask
# brew install brew-cask
# brew cask install caffeine transmission appcleaner the-unarchiver \
# imageoptim bettertouchtool magic-launch iperf

exit 0
