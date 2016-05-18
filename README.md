# NFS Client for docker that actually works
Inspired by mnagy/nfs-server

```bash
$ docker run -d --net=bridge --privileged --name nfs-client  moatazelmasry2/nfs-client/ ${NFS_SERVER} ${MOUNT_ON_SERVER} ${MOUNT_POINT}
#exmple
$ docker run -d --net=bridge --privileged --name nfs-client  moatazelmasry2/nfs-client/ 192.168.0.15 /exports/users /mnt/users
```

Where ${MOUNT_ON_SERVER} is the mounted/exported directory on the NFS server while ${MOUNT_POINT} is the directory mounted locally



