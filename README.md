# Creating database users

Custom database configuration might be useful if you need to fine-tune your server deployment and adjust it for your needs, so let's practice configuring the database! 

## Task

### Prerequisites

1. Install and configure a MySQL database server on a Virtual Machine.
2. Fork this repository.
3. Docker installed and configured on your computer

### Requirements

In this task, you will need to update your database configuration on the virtual machine you prepared during the lab setup: 
- Copy the configuration file from your database server to the file `task.cnf` in this repository
- Update the configuration according to the requirements 
- To test if configuration is correct - build a docker image using the Dockerfile in this repository and start the container from that image. To build the image and star the contianer, use the following commands (run them in the repository folder): 
`
docker build -t mysql-test:latest . 
docker run --name mysql -e MYSQL_ROOT_PASSWORD=P@ssw0rd -d mysql-test:latest
docker logs -f mysql
`
- If the database service isn't starting - troubleshoot the issue by checking the the container log. 
- Once configuration is ready, copy it's content to the file `task.cnf` in this repository and submit the PR for a review.

Configuration requirements: 
- Change the system user, which is used by database service, to `root`.
- Change the TCP port to `3000`
- Change data directory to `/data`
- Enable logging of slow queried by uncommenting configuration option `slow_query_log = 1`
- Change the path to the slow query log to `/data/mysql-slow.log`
- Comment the config, which sets error log path

Notes: 
- If your database server is installed on Ubuntu 22.04, using apt, the configuration file you need to edit, is located at `/etc/mysql/mysql.conf.d/mysqld.cnf`
- Just like on other config files, '#' is marking commented lines. If you are updating the commented config - don't forget to uncomment the line. 
