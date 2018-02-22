.PHONY: all clean dependencies html watch help

WKHTMLPODF := $(shell command -v wkhtmltopdf 2> /dev/null)

all: clean dependencies ## Removes «cv.html» and «cv.pdf» if found on disk, installs the dependencies and generates a pdf version of the CV.
	node node_modules/.bin/md2resume --pdf cv.md

dependencies: ## Installs the npm packages, if `wkhtmltopdf` is not found it also installs it using homebrew.
	npm install
ifndef WKHTMLPODF
	brew cask install wkhtmltopdf
endif

html: clean dependencies ## Removes «cv.html» and «cv.pdf» if found on disk, install the dependencies and generates an html version of the CV.
	node node_modules/.bin/md2resume cv.md

watch: clean dependencies ## Same as the «html» target but listens to changes on «cv.md» and hot reloads the changes to http://localhost:4000/cv.html.
	node node_modules/.bin/light-server -s . -w "cv.md # node_modules/.bin/md2resume cv.md"

clean: ## Removes «cv.html» and «cv.pdf» if found on disk
	rm -rf cv.html cv.pdf docs

deploy: html ## Calls «clean» and «html» targets, then moves the generated html CV page to the «docs» folder.
	mkdir docs
	mv cv.html ./docs/index.html

help: ## Displays this help menu
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
