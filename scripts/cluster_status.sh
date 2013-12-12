#!/bin/sh

echo -e "\n-------------------- HDFS --------------------\n"
sh      hdfs/status.sh
echo -e "\n-------------------- MAPREDUCE --------------------\n"
sh    mapred/status.sh
echo -e "\n-------------------- ZOOKEEPER --------------------\n"
sh zookeeper/status.sh
echo -e "\n-------------------- HBASE --------------------\n"
sh     hbase/status.sh

