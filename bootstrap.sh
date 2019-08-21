#!/bin/bash

# GROS MÉNAGE
cd ~

# Backup existing dotfiles
mkdir .jumpbox_dotfile_backups
cp {.bash*,.bin*,.cache*,.chef*,.config*,.gitconfig,.lesshst,.oh-my-zsh,.profile,.ssh/known_hosts,.vim*,.zcomp*,.zsh*} .jumpbox_dotfile_backups/
echo "This created backups of your dotfiles at ~/.jumpbox_dotfile_backups. Running this again will replace these backups."

# Don't delete .ssh otherwise you cannot get in!!
rm -rf .bash* .bin* .cache* .chef* .config* .gitconfig .lesshst .oh-my-zsh .profile .ssh/known_hosts .vim* .zcomp* .zsh*
# In case we are re-running it
rm -rf .jumpbox-tools

# Clone ourselves
git clone git@github.com:LeoCavaille/jumpbox-tools ~/.jumpbox-tools
cd ~/.jumpbox-tools

./installs.sh
./links.sh

exec zsh
