#!/bin/bash

base_dir=$(cd $(dirname $0); pwd)

mkdir -p ~/.config/alacritty ~/.zsh/{functions,completions}

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

# git config
git_config() {
  echo "input git user name:"
  read git_user_name
  echo "input git user email:"
  read git_user_email
  git config --global user.name $git_user_name
  git config --global user.email $git_user_email
  git config --global core.editor vim
  echo "git config done"
}
git_config
