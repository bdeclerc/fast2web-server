#!/bin/bash
echo "Start of configure_drush.sh"
pear channel-discover pear.drush.org 
pear install drush/drush
pear install Console_Table
sudo -H -u fedict drush -v
echo "End of configure_drush.sh"
