#!/usr/bin/env bash

echo "
### Here I am sourcing external bash configuration files
# This file contains all my aliases and shortcuts
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# This file contains specific and handy bash functions
if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi" >> ~/.bashrc

bash install_apps.sh
