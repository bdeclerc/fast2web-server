#!/bin/bash
echo "this script needs to run as user 'fedict'"
cd /home/fedict/make
echo "Downloading OpenFed distribution 1.0-beta2"
wget http://drupalcode.org/sandbox/bart.hanssens/1813432.git/snapshot/b11d994f7ae74f04140f13ec5f325099f1c94fb5.tar.gz -O openfed-1.0-beta2.tar.gz
mkdir openfed-1.0-beta2
mv openfed-1.0-beta2.tar.gz openfed-1.0-beta2
cd openfed-1.0-beta2
tar xvzf openfed-1.0-beta2.tar.gz
mv */* .
echo "Build latest OpenFed distribution as a platform"
drush make build-openfed.make ~/web/platforms/openfed-1.0-beta2
echo ""
echo "Now, to make your first site, as user Fedict, run the following commands:"
echo "cd /home/fedict/make/site1001/"
echo "drush make site1001.make /home/fedict/web/sites/site1001"
echo "drush sql-create --db-su=fedict  --db-su-pw=fedict --db-url=\"mysql://1001:1001@localhost/1001\""
echo "/home/fedict/scripts/linkplatform.sh openfed-1.0-beta2 site1001"
echo "/home/fedict/scripts/addsite.sh 1001"
