name "fast2web-d7"
description "complete server setup for a standard Fast2Web Drupal server"
run_list "recipe[apache2]", "recipe[php-fpm]", "recipe[mariadb::server]", "recipe[php::module_apc]","recipe[php::fpm]", "recipe[drush]"
default_attributes "mysql" => 	{
			    "server_root_password" => "fast2webd7",
			    "server_repl_password" => "fast2webd7",
			    "server_debian_password" => "fast2webd7"
				}
override_attributes "apache" => {
				"default_modules" => ["alias", "auth_basic", "authn_file", "authz_default", "authz_groupfile", "authz_user", "deflate", "dir", "env", "fastcgi", "mime", "negotiation", "rewrite", "setenvif", "ssl", "status"]
				}


