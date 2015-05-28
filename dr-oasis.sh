#!/bin/bash

###
#
# DR. OASIS
# Disaster Recovery: OSX Automatic Software Installation Script
#
# Requirements:
# Install Xcode first
#
###

# Install command line tools for Xcode

    xcode-select --install

# Install [Homebrew](http://homebrew.io/)

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install some commonly required packages

    brew install gpg openssl gnupg

# Install [Cask](http://caskroom.io/)

    brew install caskroom/cask/brew-cask

# Install to /Applications
# I want to make my software available to other user accounts on the same machine.

    export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Install brews
# ( the sed command strips out comments )

    brew install $(cat Brewfile | sed 's/#.*//')

# Install casks

    brew cask install $(cat Caskfile | sed 's/#.*//')

# Resources
#. https://mattstauffer.co/blog/setting-up-a-new-os-x-development-machine-part-2-global-package-managers
#. https://github.com/Homebrew/homebrew/issues/32952#issuecomment-62545876


