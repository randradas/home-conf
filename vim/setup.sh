#!/bin/bash
# flags
set -e

# temp workspace
RANDOM_DIR="/tmp/vim-$RANDOM"
mkdir -p $RANDOM_DIR
pushd .
cd $RANDOM_DIR

# vim autoload and bundle clean and prepare
rm -rf ~/.vim/autoload ~/.vim/bundle/
mkdir -p ~/.vim/autoload ~/.vim/bundle/

# pathogen
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install some plugins
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colores-solarized

# finish
rm -rf $RANDOM_DIR
popd

# .vimrc
cp vim/.vimrc ~

exit 0
