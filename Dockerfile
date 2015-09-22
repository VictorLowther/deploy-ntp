FROM digitalrebar/base
MAINTAINER Victor Lowther <victor@rackn.com>

RUN apt-get install -y ntp

COPY entrypoint.d/*.sh /usr/local/entrypoint.d/ 
COPY ntp.json /etc/consul.d/ntp.json

ENTRYPOINT ["/sbin/docker-entrypoint.sh"]
