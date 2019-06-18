#!/bin/bash

if ! test $(which brew); then
  echo "required brew... exit"
  return
fi

echo "installing java11"
# brew tap caskroom/versions
brew cask install java11
