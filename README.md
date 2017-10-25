# RabbitMQContainer

__Copyright (c) General Electric Company, 2017.  All rights reserved.__

Container for RabbitMQ from https://hub.docker.com/_/rabbitmq/

### Building a RabbitMQ container image ###

The following docker command will fetch a RabbitMQ docker image
from docker hub.
~~~
docker build -t rt106/rt106-rabbitmq --build-arg http_proxy=$http_proxy --build-arg https_proxy=$https_proxy .
~~~
The '3-management' version specified in the Dockerfile specifies the image which has the web
based management interface built into it.

### Starting the RabbitMQ container ###

The following docker command will start up the RabbitMQ
container. The rabbitmq management ports are forewarded out of the container.
~~~
docker run -d=true --name rt106-rabbitmq -p 5672:5672 -p 15672:15672 rt106/rt106-rabbitmq
~~~

When you run the container, you may get an error about the naming of the container. If so, you can use the
following docker command to remove the container.

~~~
docker rm -f rt106-rabbitmq
~~~

### Management of the RabbitMQ Server ###

RabbitMQ provides a web-based gui that can be used to visualize and manage the operation of the RabbitMQ server.
Using a web browser on the machine hosting the container, you can observe the operation of the server. Using
the following URL 'http://localhost:15672' will display a RabbitMQ login page. The server in the container is
configured with a user named 'test_user', that has a password 'test_user'.
