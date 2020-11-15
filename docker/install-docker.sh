#!/usr/bin/env bash
#
# install docker
# docker - https://www.docker.com
#

# check install brew
repository_root=$(cd $(dirname "$0")/.. && pwd)
${repository_root}/brew/install-brew.sh

# install docker
if ! [ -x "$(command -v docker)"]; then
  echo "installing docker..."
  brew cask install docker
fi

brew cleanup

echo "$0 Done"
