#!/bin/bash

# Install brew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# Check for Homebrew
if test ! $(which brew)
then
  exit
fi

# Make sure we're using the latest Homebrew
brew update

# Upgrade any already-installed formula
brew upgrade

# Install GNU core utilities
brew install coreutils automake findutils

# Install more recent version of bash
brew install bash

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OSX tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep
# brew tap josegonzalez/homebrew-php
# brew install php54

# Install everything else
brew install ack the_silver_searcher git jpeg git-extras vim vcprompt

# Remove outdated versions from the cellar
brew cleanup

# Install spot
npm install -g spot

exit 0
