#!/bin/bash


echo "enter sentence"
read sentence
for word in $sentence; do
    reversed="$word $reversed"
done
echo $reversed
