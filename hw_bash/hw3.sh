#!/bin/bash

echo "what file do you want to check?"
read file_name
if [ -f "$file_name" ]; then
    if [ -r "$file_name" ]; then
        echo "the file $fil_name is  exists"
        echo "$file_name is located in $(realpath $file_name)"
    else
        echo "adress is not found"
    fi
else
    echo "the file $file_name was not found"
fi
