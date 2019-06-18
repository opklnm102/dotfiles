#!/bin/bash

if ! test $(which brew); then
  echo "required brew... exit"
  return
fi

echo "installing java"
brew cask install java
