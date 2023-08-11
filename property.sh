#!/bin/bash

# This is a simple if-elif statement with variables

# This script aims to  sell a property asking user how much they want to offer.

company=mypropertyco
property="4bed town house in London"

echo " Hi , welcome to $company!"
echo " What's your name?"
read name 
echo " Ok $name. Currently we have this amazing $property  up for sale !! "
echo " How much do you offer?"
read price



if  [ $price -ge 500000 ];
then
        echo "Fantastic ! Hold on 10 seconds I will inform the owner"
        sleep 10
        echo "Great news $name !! The owner has accepted your offer."
        echo " Nice doing business with you!"

elif [ $price -le 100000 ];
then
        echo " Sorry the owner has had better offers! You'll never see that in London"
fi

