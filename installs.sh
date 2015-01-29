# ZSH install
if [ ! -d ~/.oh-my-zsh ]; then
    echo "Installing OMZ"
    curl -L http://install.ohmyz.sh | zsh
else
    echo "OMZ already installed"
fi
rm -f ~/.zshrc.pre-oh-my-zsh
