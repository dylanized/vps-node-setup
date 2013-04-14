#!/bin/bash 

NODE_VERSION=0.10.4
BASH_PROFILE=~/.profile

read -p "UPDATE APT-GET"
apt-get update

read -p "INSTALL GIT"
apt-get install git

read -p "INSTALL CURL"
apt-get install curl

read -p "INSTALL HUB (Github helper)"
curl http://defunkt.io/hub/standalone -sLo /bin/hub
chmod +x ~/bin/hub

read -p "INSTALL DOTFILES"
git clone git://github.com/dylanized/dotfiles.git ~/.dotfiles

read -p "INSTALL LIBRARIES"
apt-get install g++ curl libssl-dev apache2-utils

read -p "INSTALL PYTHON"
apt-get install python-software-properties

read -p "DOWNLOAD NODE FILE"
wget http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.gz

read -p "UNZIP NODE FILE"
tar xzf node-v$NODE_VERSION.tar.gz

read -p "RUN NODE MAKE SCRIPT"
cd node-v$NODE_VERSION
./configure
make

read -p "RUN MAKE INSTALL"
make install

read -p "INSTALL NPM (Node Package Manager)"
curl http://npmjs.org/install.sh | sh

read -p "INSTALL NVM (Node Version Manager)"
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

read -p "INSTALL FOREVER (process watcher)"
npm install forever -g

read -p "INSTALL NODE-HTTP-PROXY (domain router)"
npm install http-proxy

read -p "INSTALL NODE INSPECTOR (debugging tool)"
npm install -g node-inspector

read -p "INSTALL UNDERSCORE.JS (commonly used utility belt)"
npm install -g underscore

read -p "INSTALL LO-DASH (better utility belt)"
npm install -g lodash

read -p "INSTALL YEOMAN (commonly used build tools)"
npm install -g yeoman

read -p "INSTALL SHELLJS (Javascript shell wrapper)"
npm install -g shelljs

read -p "INSTALL EXPRESS (commonly used web framework)"
npm install -g express

read -p "INSTALL SAILS.JS (bitchin web framework)"
npm -g install sails

read -p "INSTALL JAM (frontend package manager)"
npm install -g jamjs

read -p "MODIFY BASH PROFILE (don't worry, it will be backed up)"
cp $BASH_PROFILE $BASH_PROFILE.orig

# ADD THESE LINES TO $BASH_PROFILE
#
# # NVM BASH COMPLETION
# source ~/nvm/nvm.sh
# [[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion
#
# # LOAD DOTFILES
# source ~/.dotfiles/dotfile
# source ~/.dotfiles/gitfile
# source ~/.dotfiles/nodefile
#
# # PROFILE OVERRIDES, IF NOT ~/.bash_profile
# alias profile="vim $BASH_PROFILE"
# alias reload="source $BASH_PROFILE"
#

echo "All Done!"

# Node instructions from:
# http://qugstart.com/blog/node-js/how-to-install-node-js-on-ubuntu-and-create-an-app-in-5-minutes/
