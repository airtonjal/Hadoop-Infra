#!/bin/sh

sudo -u zookeeper sudo service zookeeper-server stop &

fab stop_zookeeper

wait $!

