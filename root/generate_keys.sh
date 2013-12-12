#!/bin/sh

if [[ -z $1 ]]; then
  echo "Hostname argument not provided"
  exit 1
fi

host=$1
user=`whoami`

echo Copying ssh files to host $host user $user

ssh-copy-id -i ~/.ssh/id_rsa.pub $host

#ssh $host mkdir -p .ssh
#cat .ssh/id_rsa.pub | ssh $host 'cat >> .ssh/authorized_keys'
#ssh $host "chmod 700 .ssh; chmod 640 .ssh/authorized_keys"

echo ssh key copied to $user
