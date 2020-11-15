#!/usr/bin/env bash
#
# intall java11
#

# check install brew
repository_root=$(cd $(dirname "$0")/.. && pwd)
${repository_root}/brew/install-brew.sh

# install java11
if ! [ "$(brew list java11)" ]; then
  echo "installing java11"
  brew install java11
fi

brew cleanup

echo "$0 Done"
