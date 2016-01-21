#!/bin/bash

# this script generates public ssh key in PEM format using id_rsa private key.
RSA=$1

function print_help {
    echo "Usage: $0 <ssh-rsa_priv_key>"
}

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    print_help
    exit 1
fi

if [ ! -e $RSA ]; then
    echo "$1 file does not exist, cannot generate PEM public key"
    exit 1
fi

# generate it
openssl rsa -in $RSA -pubout
