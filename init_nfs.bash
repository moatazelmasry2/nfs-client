#!/bin/bash


if [[ $# -ne 1 ]];
then
  SERVER=$1
  MOUNT=$2
  MOUNTPOINT=$3
  mkdir -p $MOUNTPOINT
  chmod 777 $MOUNTPOINT
  echo $SERVER:$MOUNT $MOUNTPOINT nfs  proto=tcp,port=2049 >> /etc/fstab
  
fi

rpcbind
rpc.statd
rpc.nfsd

exec rpc.mountd --foreground



