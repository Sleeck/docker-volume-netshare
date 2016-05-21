FROM rancher/os-console:v0.4.5

MAINTAINER Vincent Vaz <contact@sleeck.eu>

ADD docker-volume-netshare_0.16_linux_amd64-bin /usr/sbin/docker-volume-netshare_linux
RUN chmod +x /usr/sbin/docker-volume-netshare_linux
RUN echo "/usr/sbin/docker-volume-netshare_linux nfs" >> /etc/respawn.conf

CMD ["/usr/sbin/console.sh"]