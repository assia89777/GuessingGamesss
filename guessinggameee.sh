#!/bin/bash

# Guessing Game Project
# Coursera Assignment

count_files() {
    find . -maxdepth 1 -type f | wc -l
}

# Get the correct number of files
correct_answer=$(count_files)

# Welcome message
echo "================================"
echo "       GUESSING GAME"
echo "================================"
echo "Welcome to the guessing game!"
echo ""

# Ask the user to guess
while true
do
    echo "How many files are in the current directory?"
    read guess

    if ! [[ "$guess" =~ ^[0-9]+$ ]]
    then
        echo "Please enter a valid number."
    elif [ "$guess" -lt "$correct_answer" ]
    then
        echo "Too low! Try again."
    elif [ "$guess" -gt "$correct_answer" ]
    then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed correctly!"
        echo "Thank you for playing!"
        break
    fi
done
