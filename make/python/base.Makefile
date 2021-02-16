install:
	pip install .

develop:
	python setup.py develop

build:
	python setup.py sdist

clean:
	find . -type d -name '__pycache__' -exec rm -rf {} +
	rm -rf build
	rm -rf dist
	rm -rf *.egg-info

deploy:
	python setup.py sdist
	python -m twine upload dist/*
