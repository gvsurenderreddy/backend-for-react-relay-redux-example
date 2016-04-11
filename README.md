## backend-for-graphql-wordpress-example

The aim of this repo is to work as a server side for the following project: [react-relay-redux-example](https://github.com/tommyJS/react-relay-redux).

The following technologies were used for the sake of simplicity:
 - Wordpress - for customizing content of a website easily
 - [graphql-wp](https://github.com/timbofield/graphql-wp) - allows setting-up GraphQL endpoint in Wordpress
 - Vagrant - for one-command setting up environment in Windows, Linux, OSX...
 - Ansible - for server provisioning in Vagrant
 - Docker - for containerizing the application

The project facilitates the following urls:
 - `localhost:8000` - for Wordpress
 - `localhost:8888` - for PhpMyAdmin

### Execution

You can use this project in a lot of ways and decide which tool will be your basis:

#### Vagrant

If you do not have anything installed on your host but Vagrant, then due to server provisioning, the ONLY requirement to run this project is Vagrant and running the following command: 
 - `vagrant up`

It might take some time for running the project at first as all dependencies have to be downloaded, however using Vagrant makes the project executable in Windows, Linux, OSX... (Docker is out-of-the-box only available for some Linux instances).

You can add your own data in wp-admin panel or use the exemplary dataset from `mysql` folder:
 - `vagrant ssh`
 - `cd /vagrant/mysql && bash -x load_db.sh`

#### Ansible

If you have Ansible installed and do not have Docker, Docker Compose and the other needed stuff, then you can run the Ansible playbook:
 - `ansible-playbook playbook/main.yml`

It will install the needed stuff on your host, but you need to have set the following environment variables $DATABASE (database name where Wordpress will be stored) and $PASSWORD (password to db)

#### Docker-Compose

If you have Docker and Docker-Compose installed, then you can execute the project using:
 - `docker-compose up`
but you also need to have set $DATABASE and $PASSWORD environment variables.

If you wish to use the exemplary dataset from `mysql` folder, then:
 - `cd mysql && bash -x load_db.sh`

### Backup

If you wish to do a backup of the database, then:
 - `cd mysql && bash -x backup.sh`

### Acknowledgements
Thanks for @timbofield, who published his work: [graphql-wp](https://github.com/timbofield/graphql-wp)
