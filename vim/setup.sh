#!/bin/bash
set -e

RANDOM_DIR="/tmp/vim-$RANDOM"
mkdir -p $RANDOM_DIR
pushd .


# clean and prepare
rm -rf ~/.vim/autoload ~/.vim/bundle/
mkdir -p ~/.vim/autoload ~/.vim/bundle/


# deploy vim stuff
cd $RANDOM_DIR

# deploy pathogen
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# deploy vim-colors-solarized
git clone git://github.com/altercation/vim-colors-solarized.git
mv vim-colors-solarized ~/.vim/bundle/

# deploy vim-puppet
git clone https://github.com/rodjek/vim-puppet.git
mv vim-puppet ~/.vim/bundle/

# finish
rm -rf $RANDOM_DIR
popd

exit 0
