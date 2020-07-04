README.md:
	touch README.md
	echo "# The Guess Game" >> README.md
	echo "- The makefile was executed on" $$(date +%F) "at" $$(date +%r)"." >> README.md
	echo "- The number of lines in guessinggame.sh are" $$(wc -l < guessinggame.sh)"." >> README.md
