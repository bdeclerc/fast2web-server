#!/bin/bash
echo "Start of add_packages.sh"
echo "Overriding a number of OS-level standard settings and retrieving all standard Ubuntu packages required"
debconf-set-selections <<< 'mysql-server mysql-server/root_password password fedict'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password fedict'
echo "Adding mariadb source to /etc/apt/sources.list"
echo "deb http://ftp.osuosl.org/pub/mariadb/repo/5.5/ubuntu precise main" >> /etc/apt/sources.list
echo "deb-src http://ftp.osuosl.org/pub/mariadb/repo/5.5/ubuntu precise main" >> /etc/apt/sources
apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 1BB943DB
apt-get -qy update
apt-get -qy install libmariadbclient-dev libmariadbclient18 libmariadbd-dev libmysqlclient18 mariadb-client mariadb-client-5.5 mariadb-client-core-5.5 mariadb-common mariadb-server mariadb-server-5.5 mariadb-server-core-5.5 mariadb-test mariadb-test-5.5 mysql-common php5-fpm php5-gd php5-mysql php-apc php5-cli php-pear apache2 libapache2-mod-fastcgi expect git mc dnsmasq
echo "End of add_packages.sh"
