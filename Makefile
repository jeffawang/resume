jeff.txt:
	man ./jeff.7 | col -x -b > jeff.txt

jeff.html:
	man ./jeff.7 | python3 render.py > jeff.html
