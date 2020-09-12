#!/usr/bin/env bash

DIR=$1

for i in $(ls $DIR)
do
    name=$(echo $i|tr -d "'"|tr -d '`')
    echo "Renaming $name"
    new_name=$(python rename-greek-files-to-greeklish.py $i)
    echo "The new name is $new_name"
    mv $DIR/$i $DIR/$new_name
done
