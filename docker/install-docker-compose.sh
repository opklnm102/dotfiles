#!/usr/bin/env bash
#
# install docker-compose
# docker-compose - https://docs.docker.com/compose
#

# check install brew
repository_root=$(cd $(dirname "$0")/.. && pwd)
${repository_root}/brew/install-brew.sh

# install docker-compose
if ! [ -x "$(command -v docker-compose)"]; then
  echo "installing docker-compose..."
  brew install docker-compose
fi

brew cleanup

echo "$0 Done"
