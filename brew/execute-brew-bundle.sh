#!/usr/bin/env bash
#
# install brew bundle
#

# check install brew
repository_root=$(cd $(dirname "$0")/.. && pwd)
${repository_root}/brew/install-brew.sh

# install brew bundle
brew bundle --file=./hue.Brewfile

brew cleanup

echo "$0 Done"
