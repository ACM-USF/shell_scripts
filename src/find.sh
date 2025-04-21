#!/bin/sh

# A function for recursively listing all files in the given directory
list_alldir(){
    # Takes in one parameter: $1 represents the ROOT_DIR
    for file in $1/*
    do
        if [ -d $file ]; then
            echo $file
            list_alldir $file
        else
            echo $file
        fi                      # Denotes end of conditionals
    done
}

# Check number of arguments (Eg. ./find Desktop means we have 1 argument)
if [ $# -gt 0 ]; then 
    list_alldir "$1"
else
    list_alldir "."
fi

echo "\n--Understanding how {} works--\n"
for file in {random,more_scripts}/*; do
    echo "$file"
done