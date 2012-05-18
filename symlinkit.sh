#!/bin/bash
#
# "borrowed" from Jonathan Palardy (http://github.com/jpalardy/etc_config/tree/master)

function relink() {
  rm $1
  ln -s $2 $1
}

cd ~

relink .bash_profile ~/.dotfiles/bash_profile
relink .bashrc ~/.dotfiles/bashrc
relink .git-completion.sh ~/.dotfiles/git-completion.sh
relink .gitconfig ~/.dotfiles/gitconfig
relink .gitignore_global ~/.dotfiles/gitignore_global
relink .vimrc ~/.dotfiles/vimrc
relink .vim ~/.dotfiles/vim

echo "Dotfiles update complete"
