#!/bin/sh

/etc/init.d/iptables save
/etc/init.d/iptables stop

chkconfig iptables off

