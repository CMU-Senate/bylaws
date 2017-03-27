all:
	pandoc bylaws.md --to=latex -o bylaws.pdf -N \
		--template=templates/template.latex \
		--include-in-header=templates/header.tex \
		--include-before-body=templates/before.tex \
		--include-after-body=templates/after.tex
clean:
	rm bylaws.pdf
