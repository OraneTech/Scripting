#!/bin/bash

# This is a script that adds a new user 

echo "Please enter your preferred username."
read newUser
sudo adduser $newuser

echo "Please create a password"
read -s password
echo "$password" | sudo passwd "$newuser" --stdin
echo "Congratulations your username is $newUser"

# Verify if the user account was created

id $newuser
grep $newuser /etc/passwd
tail -3 /etc/passwd

