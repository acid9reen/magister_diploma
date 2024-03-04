pdf_reader ?= evince

build: FORCE
	lualatex main.tex
	lualatex main.tex # 2nd to update contents

view: FORCE
	nohup $(pdf_reader) main.pdf &

FORCE: ;
