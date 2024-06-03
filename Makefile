.PHONY: gh-pages
gh-pages:
	git checkout gh-pages
	$(MAKE) jeff.txt index.html
	git add docs
	git commit -m'render'
	git push
	git checkout -

jeff.txt: dir
	man ./jeff.7 | col -x -b > docs/jeff.txt

dir:
	mkdir -p docs

index.html: dir
	man ./jeff.7 | python3 render.py > docs/index.html

.PHONY: all clean
all: jeff.txt index.html
clean:
	rm docs/jeff.txt docs/index.html
