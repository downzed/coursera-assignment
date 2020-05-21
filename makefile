all: create_readme

create_readme: 
	echo "### The Unix Workbench - Coursera assignment" > README.md
	echo "* Make was running @ $$(date +'%c')" >> README.md
	echo "* guessinggame.sh contains $$(cat guessinggame.sh | wc -l) lines of code" >> README.md


clean:
	rm README.md

