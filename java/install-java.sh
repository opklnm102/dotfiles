#!/usr/bin/env bash
#
# intall java
#

# check install brew
repository_root=$(cd $(dirname "$0")/.. && pwd)
${repository_root}/brew/install-brew.sh

# install java
if ! [ -x "$(command -v java)" ]; then
  echo "installing java"
  brew cask install java
fi

brew cleanup

echo "$0 Done"
