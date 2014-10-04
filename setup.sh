#!/bin/bash


__print_info(){
    echo -e "\e[94m$1\e[0m"
}


__print_error(){
    echo -e "\e[31m$1\e[0m"
}


__checks(){
    # setup.sh should be run sourced
    [[ `basename $0` == `basename ${BASH_SOURCE[0]}` ]] && 
        __print_error 'setup.sh should be sourced' && 
        exit 1

    # setup.sh should be run from its own directory
    [[ ! -e ./`basename ${BASH_SOURCE[0]}` ]] &&
        __print_error 'run setup.sh from its directory' &&
        return 1

    return 0
}


__set_env(){
    __print_info 'Setting environment...'
    # don't put duplicate lines or lines starting with space in the history.
    # See bash(1) for more options
    HISTCONTROL=ignoreboth

    # append to the history file, don't overwrite it
    shopt -s histappend

    # for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
    HISTSIZE=1000
    HISTFILESIZE=2000

    # check the window size after each command and, if necessary,
    # update the values of LINES and COLUMNS.
    shopt -s checkwinsize

    # enable color support of ls and also add handy aliases
    if [ -x /usr/bin/dircolors ]; then
        test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
        alias ls='ls --color=auto'
    fi

    # ENV VARS
    export MYENV=`pwd`

    __print_info 'Environment ready!\n'
    return 0
}


__set_config_files(){
    __print_info 'Setting configuration files...'
    rm -f ~/.vimrc; ln -s $MYENV/conf/.vimrc ~
    rm -f ~/.gitconfig; ln -s $MYENV/conf/.gitconfig ~
    rm -rf ~/.config/terminator/; mkdir -p ~/.config/terminator/
    ln -s $MYENV/conf/.config/terminator/config ~/.config/terminator/

    __print_info 'Configuration files ready!\n'
    return 0
}


__set_apps(){
    __print_info 'Setting apps...'
#    __set_pyenv
#    __set_vim
    __print_info 'Apps ready!\n'
    return 0
}


# main
#
# In case any error occurs stop doing things
__checks &&
__set_env &&
__set_config_files &&
__set_apps || __print_error 'there was some unexpected error'
