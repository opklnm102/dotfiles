#!/bin/bash
# Homebrew - https://brew.sh/index_ko

if ! test $(which brew); then
  echo "installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update && brew upgrade

# TODO: brew bundle
