Docker implemenation of http://netshare.containx.io


For rancheros create this file
```
/var/lib/rancher/conf/docker-volume-netshare-service.yml
```

Add
```
docker-volume-netshare:
  image: docker-volume-netshare:rancher-os-nfs-0.4.5
  restart: always
  privileged: true
  labels:
  -  io.rancher.os.scope=system
  - io.rancher.os.before=docker
  volumes_from:
  - all-volumes
```

Then run
```
ros service enable /var/lib/rancher/conf/docker-volume-netshare-service.yml
```