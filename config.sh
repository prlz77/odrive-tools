#!/bin/bash

# Some useful aliases and functions for the CLI: 

## odrive-start, starts the sync daemon
alias odrive-start="nohup $HOME/.odrive-agent/bin/odriveagent > /dev/null 2>&1 &"
## odrive, the main CLI command
alias odrive="$HOME/.odrive-agent/bin/odrive.py"
## rsync, recursively syncs all files in a folder
function rsync {
    flist=`find $1 -name "*.cloud"`
    while [[ $flist != "" ]]; do
        for f in $flist; do 
            odrive sync $f
        done
        flist=`find $1 -name "*.cloud"`
    done
}
