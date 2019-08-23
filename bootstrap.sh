#!/bin/bash

# GROS MÉNAGE
cd ~

# Backup existing dotfiles
printf "Creating backups of your dotfiles at ~/.jumpbox_dotfile_backups.\nRunning this again will replace these backups with the files this generates.\n\n"
mkdir .jumpbox_dotfile_backups
for fname in .bash* .bin* .cache* .chef* .config* .gitconfig .lesshst .oh-my-zsh .profile .ssh/known_hosts .vim* .zcomp* .zsh*
do
  if [ -f $fname ]; then
    cp $fname .jumpbox_dotfile_backups
    echo "~/$fname copied to ~/.jumpbox_dotfile_backups/$fname"
  fi
  if [ -d $fname ]; then
    cp -r $fname .jumpbox_dotfile_backups
    echo "~/$fname copied to ~/.jumpbox_dotfile_backups/$fname"
  fi
done

# Don't delete .ssh otherwise you cannot get in!!
echo "Removing/replacing dotfiles which have been backed up."
rm -rf .bash* .bin* .cache* .chef* .config* .gitconfig .lesshst .oh-my-zsh .profile .ssh/known_hosts .vim* .zcomp* .zsh*
# In case we are re-running it
rm -rf .jumpbox-tools

# Clone ourselves
git clone git@github.com:LeoCavaille/jumpbox-tools ~/.jumpbox-tools
cd ~/.jumpbox-tools

./installs.sh
./links.sh

exec zsh
