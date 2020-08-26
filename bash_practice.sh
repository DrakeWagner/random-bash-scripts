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

echo ============================================

FILELIST=`ls`
filewithtime=/tmp/my-dir/file_$(/bin/date +%Y-%m-%d).txt
echo $filewithtime
echo ${FILELIST}

# using escape characters ` allows for a command to be used
# using ' just puts the words into a string
# command as a variable:
print_working_directory=`pwd`
print_working_directory_single_quotes='pwd'
echo 'The current working directory is: '$print_working_directory
echo $print_working_directory_single_quotes
# putting a backslash in front negates the command and prints the name instead
echo \$print_working_directory
echo ==============================================

# double quotes preserve whitespace:
greeting='Hello          world!'
echo $greeting
echo \'$greeting\'
echo "$greeting"

echo ================================
# arrays:
my_array=(apple banana "Fruit Basket" orange)
new_array[2]=apricot
echo ${#my_array[@]} # total number of elements in an array
# ${#array[@]}
echo ${my_array[3]} # orange
my_array[4]="carrot" # add to the array
echo The forth item in the array is: ${my_array[4]}
echo ${my_array[${#my_array[@]}-1]} # (-1) since counting starts at 0


