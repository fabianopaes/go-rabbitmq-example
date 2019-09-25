include help.mk

.PHONY: up
up: ##@development Get the enviromet up in background
	docker-compose up --build -d

.PHONY: up
stop: ##@development Get the enviromet up in background
	docker-compose stop

.PHONY: publish
publish: ##@development Send message to the queue
	go run producer/publish.go

.PHONY: consumer
consumer: ##@development starts consuming message from queue
	go run consumer/worker.go