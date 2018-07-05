install:
	npm install

start:
	npm start

fe.docker.build:
	docker build -t fe-builder:1 -f docker/builder/Dockerfile .
	docker build -t fe-example:1 -f docker/app/Dockerfile .

fe.docker.up: fe.docker.build
	docker-compose up
	docker ps

fe.docker.down:
	docker-compose down
