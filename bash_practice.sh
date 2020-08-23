#!/bin/bash
# ^Sha-bang tells where to find the interpreter, and is not read as a comment

variable=myvariable
echo "my variable is called: "${variable} #${} around variables
age=22
echo 'I am '${age}' years old'

FILELIST=`ls`
filewithtime=/tmp/my-dir/file_$(/bin/date +%Y-%m-%d).txt
echo $filewithtime
