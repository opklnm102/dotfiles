#!/bin/bash


# install docker
if ! test $(which docker); then
    echo "installing docker..."
    brew cask install docker
fi

# install docker-compose
if ! test $(which docker-compose); then
    echo "installing docker-compose..."
    brew install docker-compose
fi

