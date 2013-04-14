# Backs up bash profile, then adds dotfiles and other good stuff

BASH_PROFILE="~/.profile"

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
