# graphql-wordpress-example

Currently, something might be broken, but this repo will start working soon :)

The aim of this repo is to work as a server side for the following project: [react-relay-redux-example](https://github.com/tommyJS/react-relay-redux).

The following technologies were used for the sake of simplicity:
 - Wordpress - for customizing content of a website easily
 - [graphql-wp](https://github.com/timbofield/graphql-wp) - allows setting-up GraphQL endpoint in Wordpress
 - Ansible - for server provisioning in Vagrant
 - Docker - for containerizing the application

### Installation

Due to the server provisioning, the ONLY requirement to run this project is Vagrant and running the following command: 
 - `vagrant up`

It might take some time for running the project at first as all dependencies have to be downloaded, however using Vagrant makes the project executable in Windows, Linux, OSX...


### Description

You can find two folders in this repo: `mysql` and `wordpress` that will be mounted to appropriate Docker containers. In order to expose GraphQL endpoint in Wordpress, graphql-wp plugin was setup.

### Acknowledgements
Thanks for @timbofield, who published his work: [graphql-wp](https://github.com/timbofield/graphql-wp)
