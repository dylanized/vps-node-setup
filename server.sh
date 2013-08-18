#!/bin/bash 

NODE_VERSION=0.10.15
PROFILE=~/.bash_profile
INPUTRC=~/.inputrc

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
apt-get install python-software-properties python g++ make

read -p "DOANLOAD AND INSTALL NODE"
add-apt-repository ppa:chris-lea/node.js
apt-get update
apt-get install nodejs

read -p "INSTALL NVM (Node Version Manager)"
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

read -p "INSTALL FOREVER (process watcher)"
npm install -g forever

read -p "INSTALL NODE-HTTP-PROXY (domain router)"
npm install -g http-proxy

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

read -p "INSTALL Grunt"
npm install -g grunt
npm install -g grunt-cli

read -p "INSTALL EXPRESS (commonly used web framework)"
npm install -g express

read -p "INSTALL SAILS.JS (bitchin web framework)"
npm -g install sails

read -p "INSTALL JAM (frontend package manager)"
npm install -g jamjs

read -p "ADD DOTFILE LINK TO BASH PROFILE"
echo "" >> $PROFILE
echo "# LOAD DOTFILES" >> $PROFILE
echo "source ~/.dotfiles/dotfile" >> $PROFILE
echo "source ~/.dotfiles/gitfile" >> $PROFILE
echo "source ~/.dotfiles/nodefile" >> $PROFILE

read -p "CREATE .INPUTRC FILE WITH BASH SEARCHING"
t $INPUTRC
echo '"\e[A": history-search-backward' >> $INPUTRC
echo '"\e[B": history-search-forward' >> $INPUTRC
echo 'set show-all-if-ambiguous on' >> $INPUTRC
echo 'set completion-ignore-case on' >> $INPUTRC

read -p "REMEMBER TO CHANGE YOUR COMPUTER NAME"

echo "Server is setup!"

# Node instructions from:
# http://qugstart.com/blog/node-js/how-to-install-node-js-on-ubuntu-and-create-an-app-in-5-minutes/
