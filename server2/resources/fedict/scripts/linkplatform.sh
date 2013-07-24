#!/bin/bash
if [ "$1" == "-h" ] || [ ! $# == 2  ]; then
  echo "This tool will replace all files/subdirectories except "sites" in a site with symlinks to the platform files"
  echo "Usage: linkplatform platform site" 
  exit 0
fi

platform=$1
site=$2
envroot='/home/fedict/web'

#delete all standard elements outside "sites"
rm -f $envroot/sites/$site/authorize.php
rm -f $envroot/sites/$site/CHANGELOG.txt
rm -f $envroot/sites/$site/COPYRIGHT.txt
rm -f $envroot/sites/$site/cron.php
rm -f $envroot/sites/$site/.htaccess
rm -rf $envroot/sites/$site/includes
rm -f $envroot/sites/$site/index.php
rm -f $envroot/sites/$site/INSTALL.mysql.txt
rm -f $envroot/sites/$site/INSTALL.pgsql.txt
rm -f $envroot/sites/$site/install.php
rm -f $envroot/sites/$site/INSTALL.sqlite.txt
rm -f $envroot/sites/$site/INSTALL.txt
rm -f $envroot/sites/$site/LICENSE.txt
rm -f $envroot/sites/$site/MAINTAINERS.txt
rm -rf $envroot/sites/$site/misc
rm -rf $envroot/sites/$site/modules
rm -rf $envroot/sites/$site/profiles
rm -rf $envroot/sites/$site/PATCHES.txt
rm -f $envroot/sites/$site/README.txt
rm -f $envroot/sites/$site/robots.txt
rm -rf $envroot/sites/$site/scripts
rm -rf $envroot/sites/$site/themes
rm -f $envroot/sites/$site/update.php
rm -f $envroot/sites/$site/UPGRADE.txt
rm -f $envroot/sites/$site/web.config
rm -f $envroot/sites/$site/xmlrpc.php

#symlink platform into this directory

ln -s $envroot/platforms/$platform/authorize.php $envroot/sites/$site/authorize.php
ln -s $envroot/platforms/$platform/CHANGELOG.txt $envroot/sites/$site/CHANGELOG.txt
ln -s $envroot/platforms/$platform/COPYRIGHT.txt $envroot/sites/$site/COPYRIGHT.txt
ln -s $envroot/platforms/$platform/cron.php $envroot/sites/$site/cron.php
ln -s $envroot/platforms/$platform/.htaccess $envroot/sites/$site/.htaccess
ln -s $envroot/platforms/$platform/includes $envroot/sites/$site/includes
ln -s $envroot/platforms/$platform/index.php $envroot/sites/$site/index.php
ln -s $envroot/platforms/$platform/INSTALL.mysql.txt $envroot/sites/$site/INSTALL.mysql.txt
ln -s $envroot/platforms/$platform/INSTALL.pgsql.txt $envroot/sites/$site/INSTALL.pgsql.txt
ln -s $envroot/platforms/$platform/install.php $envroot/sites/$site/install.php
ln -s $envroot/platforms/$platform/INSTALL.sqlite.txt $envroot/sites/$site/INSTALL.sqlite.txt
ln -s $envroot/platforms/$platform/INSTALL.txt $envroot/sites/$site/INSTALL.txt
ln -s $envroot/platforms/$platform/LICENSE.txt $envroot/sites/$site/LICENSE.txt
ln -s $envroot/platforms/$platform/MAINTAINERS.txt $envroot/sites/$site/MAINTAINERS.txt
ln -s $envroot/platforms/$platform/misc $envroot/sites/$site/misc
ln -s $envroot/platforms/$platform/modules $envroot/sites/$site/modules
ln -s $envroot/platforms/$platform/profiles $envroot/sites/$site/profiles
ln -s $envroot/platforms/$platform/PATCHES.txt $envroot/sites/$site/PATCHES.txt
ln -s $envroot/platforms/$platform/README.txt $envroot/sites/$site/README.txt
#ln -s $envroot/platforms/$platform/robots.txt $envroot/sites/$site/robots.txt
ln -s $envroot/platforms/$platform/scripts $envroot/sites/$site/scripts
ln -s $envroot/platforms/$platform/themes $envroot/sites/$site/themes
ln -s $envroot/platforms/$platform/update.php $envroot/sites/$site/update.php
ln -s $envroot/platforms/$platform/UPGRADE.txt $envroot/sites/$site/UPGRADE.txt
ln -s $envroot/platforms/$platform/web.config $envroot/sites/$site/web.config
ln -s $envroot/platforms/$platform/xmlrpc.php $envroot/sites/$site/xmlrpc.php

