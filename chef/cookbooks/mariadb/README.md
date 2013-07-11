Description
===========

Install MariaDB server components, leveraging the Opscode MySQL cookbook
as much as possible.

Based on the chef-percona cookbook: https://github.com/myplanetdigital/chef-percona

Tested only on Ubuntu 12.04. Not tested on enterprise linux distros.

Requirements
============

* MySQL cookbook (=> 1.3.0)

Attributes
==========

`mariadb['version']`
Which version of MariaDB to install. Allowed values are `5.5` and `10.0`.

Other attributes necessarily override the default mysql attributes
related to package names.

Recipes
=======

default
-------

Mirror of `client` recipe.

mariadb_repo
------------

Installs the MariaDB APT repo for Ubuntu.

client
------

Includes `mariadb_repo` recipe and installs MariaDB client using
`mysql::client` recipe.

server
------

Includes `mariadb_repo` recipe and installs MariaDB server using
`mysql::server` recipe.

Usage
=====

To Do
=====

  - Add support for enterprise linux and FreeBSD
