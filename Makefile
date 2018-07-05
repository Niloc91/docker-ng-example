install:
	npm install

start:
	npm start

fe.docker.build:
	docker build -t fe-builder:latest -f docker/builder/Dockerfile .
	docker build -t fe-example:latest -f docker/app/Dockerfile .

fe.docker.up: fe.docker.build
	docker-compose up
	docker ps

fe.docker.down:
	docker-compose down
