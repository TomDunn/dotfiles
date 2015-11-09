#!/bin/bash

sudo apt-get install git

ROOT_DIR="$HOME/programming/dotfiles"
mkdir -p $ROOT_DIR

# this repo holds config files
git clone https://github.com/TomDunn/dotfiles.git $ROOT_DIR
cd $ROOT_DIR
pwd

# symlink the config files in to place
ln -s $ROOT_DIR/.tmux.conf $HOME/.tmux.conf
ln -s $ROOT_DIR/.vimrc     $HOME/.vimrc
ln -s $ROOT_DIR/.zshrc     $HOME/.zshrc

# install other things i use 
sudo apt-get install vim curl zsh
bash ./vim-plugins.sh

# SSH keys
mkdir -p $HOME/.ssh
if [ ! -f $HOME/.ssh/id_rsa.pub ]; then
    echo "Generating SSH keys"
    echo "Enter your email:"
    read email
    ssh-keygen -t rsa -b 4096 -C $email
    cat $HOME/.ssh/id_rsa.pub
else
    echo "SSH keys exist, skipping generation step"
fi
