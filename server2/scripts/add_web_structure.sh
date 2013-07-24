#!/bin/bash
mkdir /home/fedict/web
chown fedict.www-data /home/fedict/web
chmod g+s /home/fedict/web
mkdir /home/fedict/log
chown fedict.www-data /home/fedict/log
chmod g+s /home/fedict/log
sudo -u fedict cp -r /vagrant/resources/fedict/* /home/fedict/
