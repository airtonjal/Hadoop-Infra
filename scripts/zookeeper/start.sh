#!/bin/sh

sudo -u zookeeper sudo service zookeeper-server start &

fab start_zookeeper

wait $!

