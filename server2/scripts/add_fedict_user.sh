#!/bin/bash
echo "Start of add_fedict_user.sh"
echo "Setting up fedict user"
adduser --disabled-login --gecos "Fedict,,," fedict
echo fedict:fedict | chpasswd
adduser fedict www-data
adduser fedict sudo
echo "Add fedict user command for apache reload"
rm -f /tmp/sudoers.new
cp /etc/sudoers /tmp/sudoers.new
echo "fedict ALL=NOPASSWD: /usr/sbin/service apache2 reload" >> /tmp/sudoers.new
EDITOR="cp /tmp/sudoers.new" visudo
echo "End of add_fedict_user.sh"
