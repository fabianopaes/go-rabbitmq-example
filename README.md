# Rabbitmq

It's just a simple example of rabbitmq usage with Golang.

## Get started

First of all you might get the RabbitMQ up, thinking about that just run 

```
$ make up
```
This simple command will run docker compose in background for you

After that you are ready to play around.

```
$ make publish
```

It will send a dummy message to the `fabiano-rabbitmq-go-queue` queue

and then 

```
$ make consume
```

So, you are getting messages from the queue to process them.


To stop the rabbitmq just type and run on your terminal

```
$ make stop
```

### Notes

This repo was built based on https://github.com/rabbitmq/rabbitmq-tutorials/tree/master/go

## Improvements

* Put the consumer and worker running under docker-compse and read the rabbitmq host and port by env vars as well as rabbitmq queue name