#!/bin/bash
# jenv - https://github.com/jenv/jenv
# only available on macOS

# TODO: check install brew if install brew when not exist

# brew install jenv
if ! brew ls --versions jenv > /dev/null; then
  echo "installing jenv..."
  brew install jenv

  if [ -z "$BASH_VERSION" ]; then
    echo "use bash"
    echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(jenv init -)"' >> ~/.bash_profile
  elif [ -z "$ZSH_VERSION" ]; then
    echo "use zsh"
    echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
    echo 'eval "$(jenv init -)"' >> ~/.zshrc
  fi
fi


# add java for jenv
JVM_HOME_PATH=/Library/Java/JavaVirtualMachines/*

for java in $JVM_HOME_PATH
do
  echo add jenv $java
  jenv add $java/Contents/Home
done

echo "Finished...! java lookup managed by jenv..."
jenv versions
