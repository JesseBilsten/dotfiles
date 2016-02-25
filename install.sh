# Install command-line tools using Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#################################################
# Brew Applications
#################################################

# Make sure we’re using the latest Homebrew & Upgrade any already-installed formulae
brew update && brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# Install some other useful utilities like `sponge`
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --default-names
# Install Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
brew install bash-completion

# Install wget with IRI support
brew install wget --enable-iri

# Install RingoJS and Narwhal
# Note that the order in which these are installed is important; see http://git.io/brew-narwhal-ringo.
brew install ringojs
brew install narwhal

# Install more recent versions of some OS X tools
brew install macvim --env-std --override-system-vim
brew install neovim/neovim/neovim
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen
brew install homebrew/php/php55 --with-gmp

# Install other useful binaries
brew install ack # Grep like Searching: http://beyondgrep.com/
brew install bfg # Git Repo Cleaning: http://rtyley.github.io/bfg-repo-cleaner/
#brew install exiv2
brew install foremost # File recovery: http://foremost.sourceforge.net/
brew install git # Version control
brew install hashpump # Hash Length Extension Attack: https://github.com/bwall/HashPump
brew install heroku-toolbelt # Toolbelt for using Heroku
brew install homebrew/versions/lua52 # Very fast scripting language for gaming
brew install imagemagick --with-webp
brew install lynx # Text web browser
brew install nmap # 'Network Mapper' security scanner
brew install node # This installs `npm` too using the recommended installation method
brew install nvm # Manages the node install
brew install p7zip
brew install pigz
brew install postgresql # Postgres DB
brew install pv
brew install python # Script Programming Language
brew install rbenv ruby-build # Ruby version management: see matching `eval "$(rbenv init -)"` in .functions; alternative to rvm
brew install rename
brew install rhino # Javascript Parsing Engine
brew install sqlmap
brew install tree
brew install ucspi-tcp # `tcpserver` et al.
brew install webkit2png
brew install xpdf
brew install z # ropa/z for quick directory access at the terminal
brew install zopfli

brew linkapps

#################################################
# Cask Applications
#################################################
brew tap caskroom/cask # Install homebrew-cask for native Mac applications
brew tap caskroom/versions # Allow us to install versions of apps like Sublime Text 3

# Install cask
brew install brew-cask

# Process
brew cask install alfred 2> /dev/null
brew cask alfred link # Link the cask install folder to Alfred so it can search them

# Design
brew cask install adobe-creative-cloud 2> /dev/null
#brew cask install sketch 2> /dev/null # Install via App Store
brew cask install colorschemer-studio 2> /dev/null
brew cask install axure-rp-pro 2> /dev/null

# Communication
brew cask install slack 2> /dev/null
brew cask install hipchat 2> /dev/null
brew cask install screenhero 2> /dev/null

# Dev
brew cask install mou 2> /dev/null # Markdown editor
brew cask install sublime-text3 2> /dev/null
brew cask install virtualbox 2> /dev/null
brew cask install transmit 2> /dev/null
brew cask install iterm2 2> /dev/null
brew cask install kaleidoscope 2> /dev/null
#brew cask install ksdiff 2> /dev/null #not necessary if Kaleidoscope is installed via Cask
brew cask install tower 2> /dev/null #http://www.git-tower.com/
brew cask install sourcetree 2> /dev/null #free version of GUI based git client
#brew cask install macvim 2> /dev/null #not necessary if installed via homebrew

# Essential
brew cask install onepassword 2> /dev/null
brew cask install dropbox 2> /dev/null

# Utils
brew cask install transmission 2> /dev/null
brew cask install istat-menus 2> /dev/null
brew cask install divvy 2> /dev/null
brew cask install vlc 2> /dev/null
brew cask install mplayerx 2> /dev/null
brew cask install spotify 2> /dev/null
brew cask install the-unarchiver 2> /dev/null
brew cask install miro-video-converter 2> /dev/null
brew cask install imagealpha 2> /dev/null
brew cask install imageoptim 2> /dev/null
brew cask install totalfinder 2> /dev/null

# Browsers
brew cask install google-chrome 2> /dev/null
brew cask install google-chrome-canary 2> /dev/null
brew cask install firefox 2> /dev/null
#brew cask install opera 2> /dev/null
#brew cask install opera-developer 2> /dev/null
#brew cask install opera-next 2> /dev/null

# Other
brew cask install torbrowser 2> /dev/null

# Remove outdated versions from the cellar
brew cleanup

#################################################
# Node.js
#################################################

npm install -g docpad # Docpad
npm install -g yo # Yeoman, Grunt & Bower
npm install -g bower
# Turn the spinner off in favor of showing http traffic
npm config set spin false
# Turn off the progress meter in favor of http traffic
npm config set progress false
# Show a log when running `npm install`. Adds `loglevel=info` to `~/.npmrc`
npm config set loglevel info

#################################################
# Ruby
#################################################

rbenv install 2.1.2
rbenv global 2.1.2 # Switch to 2.1.2 globally
rbenv rehash # Update paths for gems

gem update --system
gem install compass

#################################################
# Dependencies
#################################################

# https://github.com/carlhuda/janus
# Janus VIM framework
curl -Lo- https://bit.ly/janus-bootstrap | bash


