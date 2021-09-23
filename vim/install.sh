#!/bin/bash
# flags
set -e

mkdir -p ~/.vim/autoload ~/.vim/bundle/

# install pathogen
# curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# install vim-solarized (not needed when using Vundle)
# git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized


# install vundle (pathonge or vundle?, that's a good question :P)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# .vimrc
cp .vimrc ~

exit 0
