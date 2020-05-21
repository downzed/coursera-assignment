#!/usr/bin/env bash

filesNumber=$(ls | wc -l)

echo "Guess: how many files in the current dir?"

function guess {
    read guess_input
    while [[ $guess_input -ne $filesNumber ]]
    do
        if [[ $guess_input -gt $filesNumber  ]]
        then
            echo "Your guess is to high, please guess again:"
            guess
        else
            echo "Your guess is to low, please guess again:"
            guess
        fi
    done

}

guess

echo "Congratulations, You are correct! $PWD has $filesNumber files!"
