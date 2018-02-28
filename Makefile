md:
	pandoc -s README.md -o resume.html
	pandoc README.md -o resume.pdf -V geometry:margin=0.5in -V urlcolor:blue
	sed -i -- 's/\<title\>\<\/title\>/\<title\>Eric Bower Resume\<\/title\>/' resume.html

deploy:
	fab deploy
