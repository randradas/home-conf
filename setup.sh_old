#!/bin/bash

#SETUP.SH VARS
TEMP_DIR="/tmp/tmp.$$"

#APPS
APPS_DIR="$HOME/apps"
VIM_URL='ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2'
VIM_TMP='./vim'

#CONF FILES
GITCONFIG='gitconfig'
VIMRC='vimrc'

#SET CONFIGURATION
cp ./$VIMRC $HOME/.$VIMRC
cp ./$GITCONFIG $HOME/.$GITCONFIG

#INSTALL APPS
mkdir -p $APPS_DIR
mkdir -p $TEMP_DIR
pushd .
cd $TEMP_DIR
pushd .
mkdir -p $VIM_TMP
mkdir -p $APPS_DIR/$VIM
cd $VIM_TMP
wget $VIM_URL
bunzip2 *bz2
tar -xvf *tar
cd vim74
./configure --prefix=$HOME/apps/ --with-features=huge --with-compiledby=randradas
make
make install
popd
rm -rf $VIM_TMP
popd
