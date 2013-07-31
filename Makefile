DOCS = gh-pages
GIT_HASH = $(shell git log -1 --pretty=format:"%H")
##################

default: app

app: 
	@echo "app has to be made manually for now"

readme:
	#pandoc README.md -t html5 -s -o gh-pages/index.html

pub: app readme
	cd ${DOCS} && git add --all
	cd ${DOCS} && git commit -m "./${DOCS} based on ${GIT_HASH}"
	cd ${DOCS} && git push origin gh-pages

.PHONY: app readme pub