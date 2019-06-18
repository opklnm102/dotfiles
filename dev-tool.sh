#!/bin/bash

if ! test $(which brew); then
  echo "required brew... exit"
  return
fi

brew cask install sourcetree
brew cast install intellij-idea
