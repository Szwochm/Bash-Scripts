#!/bin/bash

# Created to move searchsploit exploits to current working directory, but works on other files
# Problems with files too similarly named Ex: /.../raft-medium-directories-lowercase.txt and /.../raft-medium-directories.txt
# SHOULD only move one file or error. No error checking done, use at own discretion.

# usage: gimme.sh rock you 70
# usage: gimme.sh generator/13528.c
# usage: gimme.sh /usr/share/dirb/wordlists/common.txt

fullpath=$(locate "$@")
test -f $fullpath && echo "Moving $fullpath to here" && cp $fullpath $(pwd)
