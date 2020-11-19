all: README.md source

README.md:
	touch README.md

source:
	echo "Project title: Guessing Game" > README.md
	echo "Timestamp when make was run: $$(date "+%T")" >> README.md
	echo "Date when make was run: $$(date "+%d-%m-%Y")" >> README.md
	echo "Number of lines of code: $$(wc -l guessinggame.sh | grep -o -E '[0-9]+')" >> README.md

clean:
	rm README.md
