
jeff.txt:
	man ./jeff.7 | col -x -b > jeff.txt

jeff.html:
	man ./jeff.7 | python3 render.py > jeff.html

.PHONY: all clean
all: jeff.txt jeff.html
clean:
	rm jeff.txt jeff.html
