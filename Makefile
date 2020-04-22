default: build

build:
	docker build -t digivava/valpine:3.11 .
	docker tag digivava/valpine:3.11 digivava/valpine:latest
run:
	docker run -it --rm --name valpine digivava/valpine
