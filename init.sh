#!/bin/bash

base_dir=$(cd $(dirname $0); pwd)

mkdir -p ~/.config/alacritty

# zsh
ln -sf $base_dir/zshrc ~/.zshrc
# starship
ln -sf $base_dir/starship.toml ~/.config/starship.toml
# alacritty
ln -sf $base_dir/alacritty.yml ~/.config/alacritty/alacritty.yml
# tmux
ln -sf $base_dir/tmux.conf ~/.tmux.conf
# vim
ln -sf $base_dir/vimrc ~/.vimrc
