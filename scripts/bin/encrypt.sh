#!/bin/bash

FILE=$1

function print_help {
    echo "Usage: $0 <input_file>"
}

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    print_help
    exit 1
fi

if [ ! -e $FILE ]; then
    echo "$1 file does not exist, nothing to encrypt"
    exit 1
fi

# encrypt it
gpg --encrypt --sign --armor -r randradas@gmail.com $FILE
