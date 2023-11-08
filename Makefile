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
	# Run test
	python -m pytest -vv --cov=mylib mylib/test_logic.py

build:
	#build container

deploy:
	#deploy

all: install format lint test deploy