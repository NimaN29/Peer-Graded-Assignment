all: README.md readme.txt

README.md: readme.txt
	touch README.md

readme.txt: guessinggame.sh
	echo "# GUESS THE NUMBER!" > README.md
	echo "## By Marie R. E. Henggeler" >> README.md

	echo "*About the game, Guess the Number*" >> README.md

	echo "1. The number of lines of code contained in guessinggame.sh" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

	echo "2. The date and time of when make was executed" >> README.md
	echo $(GUESS) >> README.md
        GUESS=executed_$(shell date +"%A %B %d %T") >> README.md

#clean:
#	rm readme.txt
#	rm README.md
