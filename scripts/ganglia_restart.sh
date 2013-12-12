#!/bin/sh

echo "STOPPING GANGLIA"

service httpd stop
service gmetad stop
service gmond stop
fab stop_ganglia

echo "STARTING GANGLIA"

service gmond start
service gmetad start
fab start_ganglia
service httpd start

