#!/bin/bash
# Reads in a text file and returns the number of characters and the word count of the file

echo -n "Enter a text file: "
read file
echo $file

# If the file is a text file, returns the character and word counts
if [ ${file: -4} == ".txt" ]
then
  echo "Text file entered..."
  echo -n "Number of characters: " 
  wc -m < $file
  echo -n "Number of words: "
  wc -w < $filee
elif [ ${file: -4} == ".csv" ]
then
  echo "CSV file entered..."
  echo -n "Number of characters: "
  wc -m < $file
  echo -n "Number of words: "
  wc -w < $file
  echo -n "Number of comma separated values: "
  grep -o "," $file | wc -l
fi
