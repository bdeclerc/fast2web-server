#!/bin/bash
if [ "$1" == "-h" ] || [ ! $# == 1  ]; then
  echo "This tool will set up all the necessary extra elements for a built website"
  echo ""
  echo "For this to work, the site needs to have been 'built' already using :"
  echo "  drush make site[sitenumber].make ~/web/sites/site[sitenumber]"
  echo "and the database also needs to be added separately using :"
  echo "  drush sql-create --db-su=fedict  --db-su-pw=fedict --db-url=\"mysql://[sitenumber]:[sitenumber]@localhost/[sitenumber]\""
  echo ""
  echo "Usage: addsite sitenumber"
  echo ""
  exit 0
fi

SITENUMBER=$1
envroot='/home/fedict/web'
sitedomain='lab.fedict.be'

mkdir $envroot/sites/site$SITENUMBER/sites/$SITENUMBER.$sitedomain
mkdir $envroot/sites/site$SITENUMBER/sites/$SITENUMBER.$sitedomain/files
chmod 774 $envroot/sites/site$SITENUMBER/sites/$SITENUMBER.$sitedomain/files
mkdir $envroot/sites/site$SITENUMBER/sites/$SITENUMBER.$sitedomain/private
chmod 774 $envroot/sites/site$SITENUMBER/sites/$SITENUMBER.$sitedomain/private
mkdir $envroot/sites/site$SITENUMBER/sites/$SITENUMBER.$sitedomain/tmp
chmod 774 $envroot/sites/site$SITENUMBER/sites/$SITENUMBER.$sitedomain/tmp
mkdir $envroot/sites/site$SITENUMBER/sites/$SITENUMBER.$sitedomain/public
chmod 774 $envroot/sites/site$SITENUMBER/sites/$SITENUMBER.$sitedomain/public

cp $envroot/../templates/settings.php $envroot/sites/site$SITENUMBER/sites/$SITENUMBER.$sitedomain/
chmod 440  $envroot/sites/site$SITENUMBER/sites/$SITENUMBER.$sitedomain/settings.php

cp $envroot/../templates/site.conf $envroot/vhost.d/$SITENUMBER.conf
sed -i 's/%SITENUMBER%/'$SITENUMBER'/g'  $envroot/vhost.d/$SITENUMBER.conf
sed -i 's/%SITEDOMAIN%/'$sitedomain'/g'  $envroot/vhost.d/$SITENUMBER.conf

mkdir $envroot/../log/site$SITENUMBER

