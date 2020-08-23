#!/bin/bash
# ^Sha-bang tells where to find the interpreter, and is not read as a comment

variable=myvariable
echo "my variable is called: "${variable} #${} around variables
age=22
echo 'I am '${age}' years old'
echo ''
# More examples of variables within text:
echo "I am $age years old"
echo 'I am $age years old'
echo 'I am '$age' years old'



FILELIST=`ls`
filewithtime=/tmp/my-dir/file_$(/bin/date +%Y-%m-%d).txt
echo $filewithtime
echo ${FILELIST}

# using ` allows for a command to be used
# using ' just puts the words into a string
# command as a variable:
print_working_directory=`pwd`
print_working_directory_single_quotes='pwd'
echo 'The current working directory is: '$print_working_directory
echo $print_working_directory_single_quotes

# double quotes preserve whitespace:
greeting='Hello          world!'
echo $greeting
echo \'$greeting\'
echo "$greeting"

