#!usr/bin/env bash

function calculate {
	real_num=$(ls | wc -l)
	echo "$real_num"
}

repo=$(calculate)
guess=0

while [[ $guess -eq 0 ]]
do
	echo "Guess the number of files.."
	read n
	if [[ $n =~ [0-9] ]]
	then
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
	else
		echo "Enter a valid number"
		let guess=0
	fi
done
