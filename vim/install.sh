#!/bin/bash
# flags
set -e

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle/
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install vim-solarized
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colores-solarized

# .vimrc
cp vim/.vimrc ~

exit 0
