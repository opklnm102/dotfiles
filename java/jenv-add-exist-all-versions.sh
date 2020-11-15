#!/usr/bin/env bash
#
# jenv - https://github.com/jenv/jenv
# only available on macOS
#

# check install brew
repository_root=$(cd $(dirname "$0")/.. && pwd)
${repository_root}/brew/install-brew.sh

# brew install jenv
if ! [ -x "$(command -v jenv)" ]; then
  echo "installing jenv..."
  brew install jenv

  if [ -z "${BASH_VERSION}" ]; then
    echo "use bash"
    echo 'export PATH="${HOME}/.jenv/bin:${PATH}"' >> ~/.bash_profile
    echo 'eval "$(jenv init -)"' >> ~/.bash_profile
  elif [ -z "${ZSH_VERSION}" ]; then
    echo "use zsh"
    echo 'export PATH="${HOME}/.jenv/bin:${PATH}"' >> ~/.zshrc
    echo 'eval "$(jenv init -)"' >> ~/.zshrc
  fi

  brew cleanup
fi

# add java for jenv
jvm_home_path="/Library/Java/JavaVirtualMachines/*"

for java in ${jvm_home_path}; do
  echo "add jenv ${java}"
  jenv add ${java}/Contents/Home
done

echo "Finished...! java lookup managed by jenv..."
jenv versions

echo "$0 Done"
