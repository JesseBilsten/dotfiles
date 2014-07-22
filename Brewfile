# Install command-line tools using Homebrew
# Usage: `brew bundle Brewfile` or 'brew bundle'

# Make sure we’re using the latest Homebrew
update

# Upgrade any already-installed formulae
upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
install coreutils
# Install some other useful utilities like `sponge`
install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
install findutils
# Install GNU `sed`, overwriting the built-in `sed`
install gnu-sed --default-names
# Install Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
install bash
install bash-completion

# Install wget with IRI support
install wget --enable-iri

# Install RingoJS and Narwhal
# Note that the order in which these are installed is important; see http://git.io/brew-narwhal-ringo.
install ringojs
install narwhal

# Install more recent versions of some OS X tools
install macvim --env-std --override-system-vim
install homebrew/dupes/grep
install homebrew/dupes/screen
install homebrew/php/php55 --with-gmp

# Install other useful binaries
install ack # Grep like Searching: http://beyondgrep.com/
install bfg # Git Repo Cleaning: http://rtyley.github.io/bfg-repo-cleaner/
#install exiv2
install foremost # File recovery: http://foremost.sourceforge.net/
install git # Version control
install hashpump # Hash Length Extension Attack: https://github.com/bwall/HashPump
install imagemagick --with-webp
install lynx # Text web browser
install nmap # 'Network Mapper' security scanner
install node # This installs `npm` too using the recommended installation method
install p7zip
install pigz
install postgresql # Postgres DB
install pv
install python # Script Programming Language
install rename
install rhino # Javascript Parsing Engine
install sqlmap
install tree
install ucspi-tcp # `tcpserver` et al.
install webkit2png
install xpdf
install zopfli

install homebrew/versions/lua52 # Very fast scripting language for gaming

linkapps

# Remove outdated versions from the cellar
cleanup
