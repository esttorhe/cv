WKHTMLPODF := $(shell command -v wkhtmltopdf 2> /dev/null)
IMAGE := there4/markdown-resume
INTERACTIVE ?= -it
DOCKER := docker run $(INTERACTIVE) -v ${PWD}:/resume $(IMAGE) 

.PHONY: clean html help stats interactive deploy

default: html

html: clean ## Removes «cv.html» and «cv.pdf» if found on disk and generates an html version of the CV.
	$(DOCKER) md2resume html cv.md .

stats: ## Generate a word frequency analysis of your resume.
	$(DOCKER) md2resume stats cv.md

interactive: ## Allows you to enter an interactive console where you can easily experiment and run different commands
	INTERACTIVE="-it" $(DOCKER)

clean: ## Removes «cv.html» and «cv.pdf» if found on disk
	rm -rf cv.html cv.pdf docs

deploy: html ## Calls «clean» and «html» targets, then generates the pdf file, & creates the docs folder
	$(DOCKER) md2resume pdf cv.md .
	mkdir docs

help: ## Displays this help menu
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
