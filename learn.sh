#!/bin/bash

#-------------------------------CHAPTER 1 Variables and Basic Input/Output.

# my_name=Katleho
# age=55

# echo "My name is $my_name and I am $age years old.😊"


# read -p "Please enter you favorite color: " color

# echo "Your favorite color is: $color"


# echo "Script name: $0"
# echo "First arg: $1"
# echo "Second arg: $2"
# echo "Total args: $#"


#-------------------------------CHAPTER 2 If/Else Conditions


num=10


if [ $num -ge 5 ]; then
    echo "Number is greater than 5"
fi

age=$num

if [ $age -ge 18 ]; then
    echo "You are an Adult.😭"
else
    echo "You are still young🥳."
fi

# this is for your between
#elif [ "$age" -ge 13 ] && [ "$age" -le 19 ]; then

read -p "Enter traffic light color: " color

if [ $color = "red" ]; then
    echo "STOP"
elif [ $color = "yellow" ]; then
    echo "SLOW DOWN"
else
    echo "GO"
fi


#-------------------------------CHAPTER 3 Loops



#-------------------------------CHAPTER 4