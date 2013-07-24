#!/bin/bash
echo "Start of configure_php.sh"
sed -i 's/memory_limit = [0-9]*M/memory_limit = 320M/g' /etc/php5/fpm/php.ini
sed -i 's/post_max_size = [0-9]*M/post_max_size = 10M/g' /etc/php5/fpm/php.ini
sed -i 's/upload_max_filesize = [0-9]*M/upload_max_filesize = 10M/g' /etc/php5/fpm/php.ini
sed -i 's/default_socket_timeout = [0-9]*/default_socket_timeout = 120/g' /etc/php5/fpm/php.ini
echo "apc.shm_size=\"64M\"" >> /etc/php5/conf.d/apc.ini
pear channel-discover pear.drush.org
pecl install uploadprogress
echo "extension=uploadprogress.so" >> /etc/php5/conf.d/uploadprogress.so
cp /vagrant/resources/etc/php5/fpm/pool.d/www.conf /etc/php5/fpm/pool.d/www.conf
service php5-fpm restart
echo "End of configure_php.sh"
