#!/usr/bin/env bash
# File: guessinggame.sh

# The number of files in the directory
fileCount=$(ls | wc -l)

# read user's guess
echo -n "Enter the number of files in this directory: "
read response

# Function to check whether the guessed number is correct
function checkEquality {
	if [[ $response -eq $fileCount ]]
	then
		echo "You guessed that right."
	else
		if [[ $response -gt $fileCount ]]
		then
			echo "The guess was too high!"
		else
			echo "The guess was too low!"
		fi
	fi
}

# Keep looping till the correct guess is made
while [[ $fileCount -ne $response ]]
do
	checkEquality
	echo -n "Guess again: "
	read  response
done

echo "Congrats, you guessed that right."
