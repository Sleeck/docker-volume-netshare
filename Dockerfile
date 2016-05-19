FROM rancher/os-console:v0.4.5

MAINTAINER Vincent Vaz <contact@sleeck.eu>

ADD docker-volume-netshare_0.16_linux_amd64-bin /docker-volume-netshare_0.16_linux_amd64-bin
ADD netshare.sh /netshare.sh
RUN chmod +x /docker-volume-netshare_0.16_linux_amd64-bin
RUN chmod +x /netshare.sh

CMD /netshare.sh