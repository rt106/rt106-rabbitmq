#!/bin/sh
# set the environment variable to locate the config file "/rt106/rabbitmq.config"
export RABBITMQ_CONFIG_FILE=/rt106/rabbitmq

( sleep 10; \
  rabbitmqctl add_user test_user test_user ; \
  rabbitmqctl set_user_tags test_user administrator ; \
  rabbitmqctl add_vhost rt106 ; \
  rabbitmqctl set_permissions -p rt106 test_user ".*" ".*" ".*" ; \
  ) &
rabbitmq-server $@
