#!/bin/bash

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# check for homebrew
if test ! $(which brew)
then
  exit
fi

# make sure we're using the latest homebrew
brew update

# upgrade any already-installed formula
brew upgrade

# install GNU core utilities
brew install coreutils automake findutils

# install more recent version of bash and zsh
brew install bash zsh
# which zsh | sudo tee -a /etc/shells
# chsh -s $(which zsh)

# install wget with IRI support
brew install wget --enable-iri

# install more recent versions of some OSX tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

# install git
brew install git --without-completions
brew install git-extras

# install everything else
brew install ack the_silver_searcher jpeg vim vcprompt

# remove outdated versions from the cellar
brew cleanup

# install spot
npm install -g git+ssh://git@github.com/guille/spot

exit 0
