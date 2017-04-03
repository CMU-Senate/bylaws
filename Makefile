.PHONY: all clean pdf html spellcheck

all: pdf html

pdf: bylaws.md
	pandoc bylaws.md --to=latex -o bylaws.pdf -N --table-of-contents \
		--template=templates/template.latex \
		--include-in-header=templates/header.tex \
		--include-before-body=templates/before.tex \
		--include-after-body=templates/after.tex

html: bylaws.md
	pandoc bylaws.md --to=html -o bylaws.html --table-of-contents \
		--template=templates/template.html

clean:
	rm bylaws.pdf bylaws.html
