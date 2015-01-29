#!/bin/bash
CDIR=~/.jumpbox-tools

rmlink(){
    rm -f $2
    ln -s $CDIR/$1 $2
}

# zsh
rmlink zsh/env ~/.zshenv
rmlink zsh/rc ~/.zshrc
mkdir -p ~/.oh-my-zsh/custom/themes
rmlink zsh/theme ~/.oh-my-zsh/custom/themes/jumpbox.zsh-theme

# tools
rmlink bin ~/.bin

# git
rmlink git/config ~/.gitconfig
