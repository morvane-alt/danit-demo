#!/bin/bash

echo "what file do you want to read?"
read file_name
if [ -f "$file_name" ]; then
    echo "the file $file_name is  exists"
    cat "$file_name"
else
    echo "the file $file_name was not found"
fi
