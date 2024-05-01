#! /bin/bash

echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing ohmyzsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing tmux and setting up"
brew install tmux
cp ../tmux.conf $HOME/.tmux.conf
echo "if [ "$TMUX" = "" ]; then exec tmux; fi" >> $HOME/.zshrc


echo "Installing bat"
brew install bat

echo "Installing eza"
brew install eza

echo "Setting up .zshrc"
echo 'alias cat="bat --paging=never"' >> $HOME/.zshrc
echo 'alias ls="eza -l"' >> $HOME/.zshrc
echo 'alias bcat='/bin/cat'' >> $HOME/.zshrc
echo 'alias python="python3"' >> $HOME/.zshrc


echo "finished"
source $HOME/.zshrc