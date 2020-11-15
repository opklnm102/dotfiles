#!/usr/bin/env bash
#
# install Homebrew
# Homebrew - https://brew.sh/index_ko
#

# install brew
if ! [ -x "$(command -v brew)" ]; then
  echo "installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# update & clean brew
brew update && brew cleanup

echo "$0 Done"
