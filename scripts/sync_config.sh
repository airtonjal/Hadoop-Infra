#!/bin/sh

echo "[`hostname`] Copying bash and vim configuration files to HDFS home"
cp hdfs/.bashrc /var/lib/hadoop-hdfs
cp hdfs/.bash_profile /var/lib/hadoop-hdfs
cp hdfs/.vimrc /var/lib/hadoop-hdfs

echo "[`hostname`] Copying bash and vim configuration files to MapReduce home"
cp mapred/.bashrc /var/lib/hadoop-mapreduce
cp mapred/.bash_profile /var/lib/hadoop-mapreduce
cp mapred/.vimrc /var/lib/hadoop-mapreduce

echo "[`hostname`] Copying bash and vim configuration files to HBase home"
cp hbase/.bashrc /var/run/hbase
cp hbase/.bash_profile /var/run/hbase
cp hbase/.vimrc /var/run/hbase

fab copy_config
