#!/usr/bin/env bash
#
# intall adoptopenjdk8
#

# check install brew
repository_root=$(cd $(dirname "$0")/.. && pwd)
${repository_root}/brew/install-brew.sh

# install adoptopenjdk8
if ! [ "$(brew list --cask adoptopenjdk8)" ]; then
  echo "installing adoptopenjdk8"
  brew tap homebrew/cask-versions
  brew cask install adoptopenjdk8
fi

brew cleanup

echo "$0 Done"
