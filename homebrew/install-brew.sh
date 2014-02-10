#!/bin/bash

# Install brew
ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)

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
brew install coreutils automake
echo "Don't forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install more recent version of bash
brew install bash

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep
brew tap josegonzalez/homebrew-php
brew install php54

# Install everything else
brew install ack
brew install the_silver_searcher
brew install git
brew install jpeg
brew install git-extras

# Remove outdated versions from the cellar
brew cleanup

# vim
brew install macvim vim

# spot
# curl https://raw.github.com/guille/spot/master/spot.sh -o /usr/local/bin/spot && chmod +x /usr/local/bin/spot
npm install -g spot

exit 0
