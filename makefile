README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "" >> README.md
	echo "Project created for Coursera." >> README.md
	echo "" >> README.md
	echo "Date and time: $$(date)" >> README.md
	echo "" >> README.md
	echo "Number of lines: $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md
