
jeff.txt:
	man ./jeff.7 | col -x -b > jeff.txt

index.html:
	man ./jeff.7 | python3 render.py > index.html

.PHONY: all clean
all: jeff.txt index.html
clean:
	rm jeff.txt index.html
