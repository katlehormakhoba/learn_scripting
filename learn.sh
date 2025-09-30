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

for color in red green yellow; do
    echo "Color: $color"
done


for i in $(seq 1 5); do
     echo "Number : $i"
done

count=1
while [ $count -le 5 ]; do
    echo "Count is : $count"
    ((count++))
done

for i in {1..5}; do
  if [ $i -eq 3 ]; then
    echo "Skipping $i"
    continue
  fi
  if [ $i -eq 5 ]; then
    echo "Breaking at $i"
    break
  fi
  echo "Number: $i"
done


#-------------------------------CHAPTER 4 Error Handling (Bash-style)

ls no/

echo $? 

ls src/

echo $?


if ls src/ > /dev/null 2>&1; then
    echo "Directory exists."
else
    echo "Directory not found."
fi

if ls /etc/passwd > /dev/null 2>&1; then
  echo "File exists."
else
  echo "File not found!"
fi


#-------------------------------CHAPTER 4 Putting It All Together — A Calculator

result=0
set -f 
while true; do
    read -p "Enter first number: " num1
    read -p "Enter operator (+ - * / or q to quit): " opr

    if [ $opr = "q" ]; then
        echo "Goodbye."
        break
    fi

    read -p "Enter second number: " num2
    

    if [ $opr = "+" ]; then
        result=$((num1 + num2))
    elif [ $opr = "-" ]; then
        result=$((num1 - num2))
    elif [ $opr = "*" ]; then
        result=$((num1 * num2))
    elif [ $opr = "/" ]; then
        if [ $num2 -eq 0 ]; then
            echo "Error: cannot divide by zero."
            continue
        fi
    result=$((num1 / num2))
    else
        echo "Invalid operation : '$opr'... Goodbye."
        break
    fi

    echo "Results: $result"
done

#-------------------------------CHAPTER 4 Putting It All Together — A Calculator




