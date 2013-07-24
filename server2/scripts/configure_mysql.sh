#!/bin/bash
echo "Start of configure_mysql.sh"
echo "Securing Mysql installation"
/vagrant/scripts/secure_mysql.sh
echo "Increasing open-files-limit"
echo '[mysqld]' > /etc/mysql/conf.d/open-files-limit.cnf
echo 'open-files-limit = 32768' >> /etc/mysql/conf.d/open-files-limit.cnf
echo "end of configure_mysql.sh"
