"!/bin/bash
cat "address=/lab.fedict.be/127.0.1.1" >> /etc/dnsmasq.conf
service dnsmasq restart
