#!/bin/bash

# Set up zsh, bash, and tmux
cp .bashrc ~/
cp .zshrc ~/
cp .tmux.conf.local ~/

# Copy vim settings
cp -r .vim ~/
cp .vimrc ~/
vim +PlugInstall +qall

cd ~/.vim/plugged/youcompleteme
python3 install.py --clang-completer --rust-completer --java-completer
