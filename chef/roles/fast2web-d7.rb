name "fast2web-d7"
description "complete server setup for a standard Fast2Web Drupal server"
run_list "recipe[apache2]","recipe[nginx]", "recipe[php-fpm]", "recipe[mariadb::server]", "recipe[php::module_apc]","recipe[php::fpm]", "recipe[drush]"
default_attributes "mysql" => 	{
			    "server_root_password" => "iloverandompasswordsbutthiswilldo",
			    "server_repl_password" => "iloverandompasswordsbutthiswilldo",
			    "server_debian_password" => "iloverandompasswordsbutthiswilldo"
				}
override_attributes "apache" => {
				"listen_ports" => ["8080", "8443"],
				"default_modules" => ["alias", "auth_basic", "authn_file", "authz_default", "authz_groupfile", "authz_user", "deflate", "dir", "env", "fastcgi", "mime", "negotiation", "rewrite", "setenvif", "ssl", "status"]
				}


