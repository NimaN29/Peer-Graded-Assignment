#!/usr/bin/env bash
# File: guessinggame.sh

# Guess the number of files in the current directory.

function guessinggame {

  # Using command substitution, executes a command and stores the result of that command in a variable, named filoc.
  filoc=$(ls | wc -l)

  # -p Outputs the prompt string before reading the user's input, which can be placed on the same line.
  read -p "How many files are in the current directory? Please make a guess and enter a number: " num

  if [[ $num -eq $filoc ]]
  then
      echo "Congratulations! $num is the correct number of files in this directory."
  elif [[ $num -ne $filoc ]]
  then
      # No variable is needed in this WHILE loop. I only want one answer to be displayed at a time.
      while [[ $num -ne $filoc ]]
      do
        # Because no variable is given, no increments or de-increments are needed in this WHILE loop.
        if [[ $num -ne $filoc ]] && [[ $num -gt $filoc ]]
        then
            echo -e "You entered: $num, which is incorrect. Your guess is too high. Please guess again: \c"
            read num
        elif [[ $num -ne $filoc ]] && [[ $num -lt $filoc ]]
        then
            echo -e "You entered: $num, which is incorrect. Your guess is too low. Please guess again: \c"
            read num
        fi
            if [[ $num -eq $filoc ]]
            then
                echo "Congratulations! $num is the correct number of files in this directory."
            fi
      done
  fi
}
guessinggame

