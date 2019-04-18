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

# vim-colors-solarized
git clone git://github.com/altercation/vim-colors-solarized.git
mv vim-colors-solarized ~/.vim/bundle/

# vim-puppet
git clone https://github.com/rodjek/vim-puppet.git
mv vim-puppet ~/.vim/bundle/

# finish
rm -rf $RANDOM_DIR
popd

# .vimrc
cp vim/.vimrc ~

exit 0
