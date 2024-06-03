.PHONY: gh-pages
gh-pages:
	[[ -z "$$(git log gh-pages..HEAD)" ]] && echo "no changes detected" && exit 1
	git checkout gh-pages
	git merge -
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
