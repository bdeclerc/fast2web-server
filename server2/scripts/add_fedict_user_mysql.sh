#!/bin/bash
echo "Start of add_fedict_user_mysql.sh"
echo "adding fedict user to mysql"
mysql -u root --password=fedict < /vagrant/scripts/add_fedict_user.sql
echo "End of add_fedict_user_mysql.sh"
