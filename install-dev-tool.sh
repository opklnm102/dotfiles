#!/usr/bin/env bash
#

# check install brew
repository_root=$(cd $(dirname "$0") && pwd)
${repository_root}/brew/install-brew.sh

# TODO: add tool
brew cask install sourcetree
brew cast install intellij-idea
brew cask install visual-studio-code

brew cleanup

echo "$0 Done"
