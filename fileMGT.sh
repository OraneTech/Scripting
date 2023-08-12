#!/bin/bash

#This is a script that automate tasks such as creating a file in a named environment
#It helps to automate processes and include dynamic variables which makes it reusalble accross environment.

#These are the user defined static variables.
#
#
env1=dev
env2=qa
env3=prod

#This is to test multi line commen test. It is not part of the code.
#
#
<<test
if [ $# -ge "1" ];then
        echo " The list of arguments is $*"
else
        echo " Please pass at least 1 command line argument with your script"
fi

sleep 3

if [ $? !# $0 ]; then
test

# This part uses dynamic variable for the filename and environment.
#
#
echo "What is the filename you want to create?"
read filename
touch $filename
echo "THIS IS A TEST" >> $filename
echo "Which environment do you want to create the file  $filename?"
echo "dev , qa or prod"
read env

#This part checks if a directory already exists or not. If it doesn't exist it will create it.
#
#
if [[ -e ./$env1 ]] && [[ -e ./$env2 ]] && [[ -e ./$env3 ]];then
        echo File is being copied to $env
        sleep 3

else
        mkdir dev
        mkdir qa
        mkdir prod
        echo File is being copied to $env
        sleep 3
fi



#This part copy the file in the correct environment.
#
#
if [ $env == $env1 ]; then
        sudo cp -r $filename /home/ec2-user/dev
        echo "file successfully copied in $env1 environment"
elif [ $env == $env2 ]; then
        sudo cp -r $filename /home/ec2-user/qa
        echo "file successfully copied in $env2 environment"
elif [ $env == $env3 ]; then
        sudo cp -r $filename ./prod
        echo "file successfully copied in $env3 environment"
else
        echo "sorry this environment does not exist."
fi
