


Local development environment
=============================



Installing and setting up Vagrant
---------------------------------

This repository is set up to use vagrant to provide a local dev environment if required.

You will need to install vagrant

    sudo gem install vagrant

You will also need to install Virtualbox, the download page is here

[http://www.virtualbox.org/wiki/Downloads](http://www.virtualbox.org/wiki/Downloads)

There is more information at the vagrant site.

[http://vagrantup.com/docs/getting-started/index.html](http://vagrantup.com/docs/getting-started/index.html)

You can initially download the latest lucid32 base box, though this will happen automatically later if not.
It's a largeish download (~300Mb) so you may want a fast connection.

    vagrant box add lucid32_ubuntu_user https://s3.amazonaws.com/analog_vagrant/lucid32_ubuntu_user.box



Setting up this project
-----------------------

After cloning this repository, move into the folder

    cd FOLDERNAME

Then initialise and update the submodules in order to bring in the puppet configurations

    git submodule init
    git submodule update

The project is now ready to be run

    cd FOLDERNAME/vagrant
    vagrant up

This may take some time to build, ~15mins is possible.

You can ssh into the server from the vagrant folder

    cd FOLDERNAME/vagrant
    vagrant ssh

The server is set up according to the puppet configurations, and has a site installed at

/var/www/docroot

that is linked to the project docroot

The site should be running at

[http://localhost:3002/](http://localhost:3002/)

..but will need the database imported initially.

There is a
FOLDERNAME/db
folder which is accessible from the server at
/var/www/db

So you can place a database backup in the FOLDERNAME/db folder in your Mac, and then do something like

**Log in to the server**

    vagrant ssh

**On the server**

    mysql -uroot -e "create database localhostdb;"
    mysql -uroot localhostdb < /var/www/db/db.sql


Drupal should pick up the database settings from

docroot/sites/localhost/settings.php

when viewing the site at http://localhost:3002



Useful commands
===============

The server comes with drush installed. You can run drush commands on the site from the localhost directory

    cd /var/www/docroot/sites/localhost

###Generate a login link

    drush uli
(you will need to add the 3002 port to the link)

###Clear caches

    drush cc all


###See all drush commands

     drush

###Get help for a particular command

    drush DRUSHCOMMAND --help
