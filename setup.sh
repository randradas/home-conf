#!/bin/bash

__checks(){
    #is it sourced
    [[ `basename $0` == `basename ${BASH_SOURCE[0]}` ]] && 
        echo -e '\e[31msetup.sh should be sourced\e[0m' && 
        exit 1
}

__set_env(){
    echo -e '\e[94mSetting environment...\e[0m'
}

__set_config_files(){
    echo -e '\e[94mSetting configuration files...\e[0m'
}

__set_apps(){
    echo -e '\e[94mSetting apps...\e[0m'
}

#main
__checks
__set_env
__set_config_files
__set_apps
