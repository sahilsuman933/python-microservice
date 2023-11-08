install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt
format:
	#Format
	black *.py mylib/*.py
lint:
	#Make lint
	pylint --disable=R,C *.py mylib/*.py
test:
	#test

deploy:
	#deploy

all: install format lint test deploy