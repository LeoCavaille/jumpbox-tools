#!/bin/bash

# GROS MÉNAGE
cd ~
# Don't delete .ssh otherwise you cannot get in!!
rm -rf .bash* .bin* .cache* .chef* .config* .gitconfig .lesshst .oh-my-zsh .profile .ssh/known_hosts .vim* .zcomp* .zsh*
# In case we are re-running it
rm -rf .jumpbox-tools

# Clone ourselves
git clone git@github.com:LeoCavaille/jumpbox-tools ~/.jumpbox-tools
cd ~/.jumpbox-tools

./installs.sh
./links.sh

