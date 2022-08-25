all: README.md readme.txt clean

README.md: readme.txt
	touch README.md

readme.txt: guessinggame.sh
	echo "# GUESS THE NUMBER!" > README.md
	echo "## By Marie R. E. Henggeler" >> README.md

	echo "*Guess the Number, will have:" >> README.md

	echo "1. The number of lines of code contained in guessinggame.sh" >> README.md

	echo "2. The date and time of when make was executed" >> README.md

	echo "*Number of lines of code in guessinggame.sh:*" > readme.txt
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.txt
	echo "*Date and time of when make was executed:*" >> readme.txt
	echo $(GUESS) >> readme.txt
        GUESS=executed_$(shell date +"%A %B %d %T") >> readme.txt

clean:
	rm readme.txt
