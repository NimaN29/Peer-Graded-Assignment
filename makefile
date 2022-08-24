all: README.md readme.txt clean

README.md: readme.txt
	touch README.md

readme.txt: guessinggame.sh
	echo "#The project is called GUESS!" > readme.txt
	echo "*The project GUESS contains the number of lines of code in guessinggame.sh:*" >> readme.txt
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.txt
	echo "*The date and Time of when make was executed:*" >> readme.txt
	echo $(GUESS) >> readme.txt
        GUESS=executed_$(shell date +"%A %B %d %T") >> readme.txt

clean:
	rm readme.txt
