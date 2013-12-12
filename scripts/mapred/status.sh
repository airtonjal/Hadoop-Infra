#!/bin/sh

sudo -u mapred sudo service hadoop-0.20-mapreduce-jobtracker status
fab status_mr

