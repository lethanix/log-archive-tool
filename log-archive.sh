#!/bin/sh
#
# Script to compress and store logs in a new directory

# ****************************
# Verify input of the script
# ****************************

## Verify the number of arguments 
if [ $# -eq 0 ] && [ $# -lt 2 ]; then
    echo Missing argument: Directory is not provided $1 1>&2
    exit 1
elif [ $# -gt 1 ]; then
    echo 'Too many arguments (+1): ' "('$#') => '$@'" 1>&2
    exit 2
fi


## Verify if $1 argument is a directory
if [ ! -d $1 ]; then
    echo Argument is not a directory: $1 1>&2
    exit 3
else 
    echo Archiving directory $1
fi


# ****************************
# Compress directory
# ****************************


