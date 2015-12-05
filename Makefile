md:
	pandoc -s resume.md -o resume.html
	pandoc resume.md --latex-engine=xelatex -o resume.pdf

deploy:
	source ~/.virtualenvs/fab/bin/activate
	fab deploy
