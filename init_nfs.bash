#!/bin/bash


if [[ -n $MOUNTPOINT ]];
  mkdir -p $MOUNTPOINT
  chmod 777 $MOUNTPOINT
  echo $SERVER:$MOUNT $MOUNTPOINT nfs  proto=tcp,port=2049 >> /etc/fstab
  mount -a
fi

rpcbind
rpc.statd
rpc.nfsd

exec rpc.mountd --foreground



