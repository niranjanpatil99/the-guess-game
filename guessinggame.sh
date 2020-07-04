#!/bin/bash

function calculate {
	real_num=$(find . -maxdepth 1 -type f | wc -l)
	echo "$real_num"
}

repo=$(calculate)
guess=0

while [[ $guess -eq 0 ]]
do
	echo "Guess the number of files.."
	read n
	if [[ $n =~ ^[1-9]$ ]]
	then
		if [[ $(echo "${#n}") -gt 3 ]]
		then
			echo "Input number out of range"
		else
			if [[ $repo -eq $n ]]
			then
				echo "Congratulations! You made the perfect guess."
				let guess=1
			elif [[ $repo -gt $n ]]
			then
				echo "Too low"
			else
				echo "Too high"
			fi
		fi
	else
		echo "Enter a valid number"
		let guess=0
	fi
done
