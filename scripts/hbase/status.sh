#!/bin/sh

sudo -u hbase sudo service hbase-master status
fab status_hbase

