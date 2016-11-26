build: build-5.6 build-7.0 build-7.1

build-5.6:
	docker build -t alexdpy/php:5.6 5.6

build-7.0:
	docker build -t alexdpy/php:7.0 7.0

build-7.1:
	docker build -t alexdpy/php:7.1 7.1
