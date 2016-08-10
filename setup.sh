#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

apt-get --assume-yes autoremove
apt-get --assume-yes update
apt-get --assume-yes install memcached python-pip libmemcached-dev zlib1g-dev libssl-dev python-dev build-essential
echo "[setup.sh] ==> changing memcached conf to listen on all ips"
sed -i 's/-l 127\.0\.0\.1/#-l 127.0.0.1/' /etc/memcached.conf #comment out line in config that exposes memcached to loopback only.
echo "done."
service memcached restart | xargs echo

echo "installing pylibmc..."
pip install pylibmc | xargs echo

