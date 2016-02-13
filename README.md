### What WPStack includes ###

* Latest wordpress on mod_php
* PHP 5.6 with xdebug and opcache
* MariaDB
* phpMyAdmin
* Git
* Subversion
* CVS
* Bazaar

### Default Ports ###

* WEB: 8080
* PhpMyAdmin: 8081

### Default Database Root Password ###

   `wpstack`

### How to Build From Source ###

`docker-compose -f docker-compose-build.yml`

### How to Build From Image ###

`docker-compose`

### Setting Your User and Group ID ###

Due to how docker treats mounted volumes, the user and group ID of `www-data` must be changed at runtime to prevent a permissions hell. This is achieved by the `HOST_UID` and `HOST_GID`enviromental variables. Change these in `docker-compose.yml` or `docker-compose-build.yml` depending on what you want to do (build or download pre-made image from docker hub).
