# Install dependencies

# https://github.com/carlhuda/janus
# Janus VIM framework
curl -Lo- https://bit.ly/janus-bootstrap | bash

# Install VIM plugins
mkdir ~/.janus
git clone https://github.com/bling/vim-airline ~/.janus/vim-airline # Powerline-esque VIM Status bar
