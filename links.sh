rmlink(){
    rm -f $2
    rm -f $CDIR/$1 $2
}

# zsh
rmlink zsh/env ~/.zshenv
rmlink zsh/rc ~/.zshrc

source ~/.zshenv
source ~/.zshrc

# tools
rmlink bin ~/.bin

# git
rmlink git/config ~/.gitconfig
