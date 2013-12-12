#!/bin/sh

sh zookeeper/stop.sh &

fab stop_zookeeper

wait $!

sh zookeeper/start.sh &

fab start_zookeeper

wait $!
