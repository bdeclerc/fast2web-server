#!/bin/bash
echo "Start of configure_apache.sh"
echo "adding modules"
a2enmod actions rewrite ssl
echo "removing modules"
a2dismod autoindex cgid
echo "updating config"
cp /vagrant/resources/etc/apache2/conf.d/php5-fcgi /etc/apache2/conf.d/php5-fcgi
echo "removing default sites"
rm -f /etc/apache2/sites-enabled/*
echo "adding fast2web"
cp /vagrant/resources/etc/apache2/sites-available/fast2web /etc/apache2/sites-available/fast2web
cd /etc/apache2/sites-enabled
ln -s ../sites-available/fast2web
echo "Restarting Apache"
service apache2 restart
echo "TODO Configure logrotate"
#cp /vagrant/logrotate.d/conimbo /etc/logrotate.d/
echo "End of configure_apache.sh"
