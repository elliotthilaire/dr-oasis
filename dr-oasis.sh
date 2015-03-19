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

# Install some commonly required brew packages

    brew install gpg openssl node

# Install [Cask](http://caskroom.io/)

    brew install caskroom/cask/brew-cask

# Install to /Applications
# I want to make my software available to other user accounts on the same machine.

    export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Runtimes

    brew cask install java adobe-reader

# Browsers

    brew cask install firefox google-chrome

# Fun

    brew cask install steam spotify skype vlc

# Developer tools

    brew cask install github

# Text Editors

    brew cask install sublime-text atom whiskey

# IDEs

    brew cask install netbeans android-studio arduino

# Utilities

    brew cask install xquartz iterm2 flux caffeine coconutbattery selfcontrol

# Virtual Machines

    brew cask install virtualbox vagrant

# Big Commercial Software Packages

    #brew cask install adobe-photoshop-lightroom microsoft-office


# Resources
#. https://mattstauffer.co/blog/setting-up-a-new-os-x-development-machine-part-2-global-package-managers
