#!/bin/bash

# This is a simple script to create a user and password


echo "Hi! Welcome onboard."

echo "We are glad to have you join us!"

echo "What's your name?"
read name

echo "Thank you $name. Can you choose a username?"
read username

if [ -e $username ];
then 
	echo "Sorry, this username is already taken"
else
	echo "$username account is created successfully."
fi




