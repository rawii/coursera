all: README.md


README.md:

	echo  " Peer-graded Assignment: Bash, Make, Git, and GitHub " > README.md
	echo 	" readfile created on $(shell date) " >> README.md
	echo 	" There are  $(shell wc -l <guessinggame.sh) lines in guessinggame script " >> README.md

clean:
	rm README.md
