Docker implemenation of http://netshare.containx.io


For rancheros create this file (sudo su ;)
```
/var/lib/rancher/conf/docker-volume-netshare-service.yml
```

Add
```
docker-volume-netshare:
  image: sleeck/docker-volume-netshare:rancher-os-nfs-0.4.5
  labels:
    io.rancher.os.after: console
    io.rancher.os.scope: system
  net: host
  pid: host
  uts: host
  ipc: host
  privileged: true
  restart: always
  volumes_from:
  - all-volumes
  volumes:
  - /usr/bin/iptables:/sbin/iptables:ro
```

Then run
```
ros service enable /var/lib/rancher/conf/docker-volume-netshare-service.yml
```
```
ros service start docker-volume-netshare
```
```
ros config set rancher.docker.storage_context: docker-volume-netshare
```

___
Troubleshoot
___

- Don't enable debian like service.