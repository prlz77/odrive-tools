#!/bin/bash

# Installs the commands and aliases in your bashrc
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" # Credit from http://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
echo "source $DIR/config.sh" >> ~/.bashrc
