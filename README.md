# dotfiles

## Usage
```sh
$ ./brew/execute-brew-bundle.sh
```



Requirements
Homebrew (on macOS or Linux) for installing dependencies.

Homebrew Cask is optional and used for installing Mac applications.

mas-cli is optional and used for installing Mac App Store applications.

whalebrew is optional and used for installing Whalebrew images.

Installation
brew bundle is automatically installed when first run.

Usage
See the brew bundle section of the brew man output or brew bundle --help.

An example Brewfile:

# 'brew tap'
tap "homebrew/cask"
# 'brew tap' with custom Git URL
tap "user/tap-repo", "https://user@bitbucket.org/user/homebrew-tap-repo.git"
# set arguments for all 'brew cask install' commands
cask_args appdir: "~/Applications"

# 'brew install'
brew "imagemagick"
# 'brew install --with-rmtp', 'brew services restart' on version changes
brew "denji/nginx/nginx-full", args: ["with-rmtp"], restart_service: :changed
# 'brew install', always 'brew services restart', 'brew link', 'brew unlink mysql' (if it is installed)
brew "mysql@5.6", restart_service: true, link: true, conflicts_with: ["mysql"]

# 'brew cask install'
cask "google-chrome"
# 'brew cask install --appdir=~/my-apps/Applications'
cask "firefox", args: { appdir: "~/my-apps/Applications" }
# 'brew cask install' only if '/usr/libexec/java_home --failfast' fails
cask "java" unless system "/usr/libexec/java_home --failfast"

# 'mas install'
mas "1Password", id: 443987910

# 'whalebrew install'
whalebrew "whalebrew/wget"
