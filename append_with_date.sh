#!/bin/bash

# Adds the date to the end of a filename

today=`date +"_%d_%m_%y"`

echo -n "Enter the filename: "
read file
name=${file%.*}
extension=${file#*.}
output=${name}${today}.$extension

cp $file $output
echo "File is now called $output"

