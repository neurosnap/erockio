md:
	pandoc -s README.md -o resume.html
	pandoc README.md --latex-engine=xelatex -o resume.pdf
	sed -i -- 's/\<title\>\<\/title\>/\<title\>Eric Bower Resume\<\/title\>/' resume.html

deploy:
	source ~/.virtualenvs/fab/bin/activate
	fab deploy
