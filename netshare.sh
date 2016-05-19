#!/bin/sh

NETSHARE_VOLUME=/var/lib/docker/volumes/netshare

if [ ! -d $NETSHARE_VOLUME ]; then
    mkdir -p $NETSHARE_VOLUME
fi

exec /docker-volume-netshare_0.16_linux_amd64-bin nfs --basedir="/var/lib/docker/volumes/netshare"