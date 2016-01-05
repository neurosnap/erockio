md:
	pandoc -s README.md -o resume.html
	pandoc README.md --latex-engine=xelatex -o resume.pdf

deploy:
	source ~/.virtualenvs/fab/bin/activate
	fab deploy
