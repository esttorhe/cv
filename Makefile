.PHONY: all clean dependencies html pdf watch help

all: clean dependencies pdf ## Removes generated files, installs dependencies, and generates HTML + PDF versions of the CV.

dependencies: ## Installs npm packages.
	npm install

html: clean dependencies ## Removes generated files, installs dependencies, and generates an HTML version of the CV.
	node node_modules/.bin/md2resume cv.md

pdf: html ## Generates the HTML then converts it to PDF using weasyprint.
	DYLD_FALLBACK_LIBRARY_PATH=/opt/homebrew/lib weasyprint cv.html cv.pdf

watch: html ## Generates HTML then watches for changes on «cv.md» and hot reloads to http://localhost:4000/cv.html.
	node node_modules/.bin/light-server -s . -w "cv.md # node_modules/.bin/md2resume cv.md"

clean: ## Removes generated files (cv.html, cv.pdf, docs)
	rm -rf cv.html cv.pdf docs

deploy: html pdf ## Generates HTML + PDF then creates the docs folder.
	mkdir docs
	cp cv.html docs/index.html
	cp cv.pdf docs/cv-esteban.pdf

help: ## Displays this help menu
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
