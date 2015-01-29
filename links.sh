#!/
CDIR=~/.jumpbox-tools

rmlink(){
    rm -f $2
    ln -s $CDIR/$1 $2
}

# zsh
rmlink zsh/env ~/.zshenv
rmlink zsh/rc ~/.zshrc

# tools
rmlink bin ~/.bin

# git
rmlink git/config ~/.gitconfig
