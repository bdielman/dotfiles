#!/bin/bash
#
# "borrowed" from Jonathan Palardy (http://github.com/jpalardy/etc_config/tree/master)

function relink() {
  rm $1
  ln -s $2 $1
}

cd ~

relink .zshrc ~/.dotfiles/zsh/zshrc
relink .gitconfig ~/.dotfiles/git/gitconfig
relink .gitignore_global ~/.dotfiles/git/gitignore_global
relink .vimrc ~/.dotfiles/vim/vimrc
relink .vim ~/.dotfiles/vim
relink .ackrc ~/.dotfiles/ack/ackrc
relink .gemrc ~/.dotfiles/ruby/gemrc
relink .railsrc ~/.dotfiles/ruby/railsrc

echo "Dotfiles update complete"
